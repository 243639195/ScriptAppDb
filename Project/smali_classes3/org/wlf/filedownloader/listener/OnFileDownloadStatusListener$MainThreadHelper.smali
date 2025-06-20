.class public Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper;
.super Ljava/lang/Object;
.source "OnFileDownloadStatusListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainThreadHelper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onFileDownloadStatusCompleted(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V
    .locals 2
    .param p0, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p1, "onFileDownloadStatusListener"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    .prologue
    .line 203
    if-nez p1, :cond_0

    .line 216
    :goto_0
    return-void

    .line 206
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 207
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$6;

    invoke-direct {v1, p1, p0}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$6;-><init>(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;Lorg/wlf/filedownloader/DownloadFileInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static onFileDownloadStatusDownloading(Lorg/wlf/filedownloader/DownloadFileInfo;FJLorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V
    .locals 8
    .param p0, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p1, "downloadSpeed"    # F
    .param p2, "remainingTime"    # J
    .param p4, "onFileDownloadStatusListener"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    .prologue
    .line 158
    if-nez p4, :cond_0

    .line 172
    :goto_0
    return-void

    .line 161
    :cond_0
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 162
    .local v6, "handler":Landroid/os/Handler;
    new-instance v0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$4;

    move-object v1, p4

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$4;-><init>(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;Lorg/wlf/filedownloader/DownloadFileInfo;FJ)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static onFileDownloadStatusFailed(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p2, "failReason"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    .param p3, "onFileDownloadStatusListener"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    .prologue
    .line 228
    if-nez p3, :cond_0

    .line 241
    :goto_0
    return-void

    .line 231
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 232
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$7;

    invoke-direct {v1, p3, p0, p1, p2}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$7;-><init>(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static onFileDownloadStatusPaused(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V
    .locals 2
    .param p0, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p1, "onFileDownloadStatusListener"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    .prologue
    .line 181
    if-nez p1, :cond_0

    .line 194
    :goto_0
    return-void

    .line 184
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 185
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$5;

    invoke-direct {v1, p1, p0}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$5;-><init>(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;Lorg/wlf/filedownloader/DownloadFileInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static onFileDownloadStatusPrepared(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V
    .locals 2
    .param p0, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p1, "onFileDownloadStatusListener"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    .prologue
    .line 133
    if-nez p1, :cond_0

    .line 146
    :goto_0
    return-void

    .line 136
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 137
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$3;

    invoke-direct {v1, p1, p0}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$3;-><init>(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;Lorg/wlf/filedownloader/DownloadFileInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static onFileDownloadStatusPreparing(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V
    .locals 2
    .param p0, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p1, "onFileDownloadStatusListener"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 124
    :goto_0
    return-void

    .line 114
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 115
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$2;

    invoke-direct {v1, p1, p0}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$2;-><init>(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;Lorg/wlf/filedownloader/DownloadFileInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static onFileDownloadStatusWaiting(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V
    .locals 2
    .param p0, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p1, "onFileDownloadStatusListener"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    .prologue
    .line 89
    if-nez p1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 92
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 93
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$1;

    invoke-direct {v1, p1, p0}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$1;-><init>(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;Lorg/wlf/filedownloader/DownloadFileInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

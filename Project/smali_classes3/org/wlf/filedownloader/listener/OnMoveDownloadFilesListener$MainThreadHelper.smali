.class public Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener$MainThreadHelper;
.super Ljava/lang/Object;
.source "OnMoveDownloadFilesListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainThreadHelper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onMoveDownloadFilesCompleted(Ljava/util/List;Ljava/util/List;Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;)V
    .locals 2
    .param p2, "onMoveDownloadFilesListener"    # Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;
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
            "Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "downloadFilesNeedMove":Ljava/util/List;, "Ljava/util/List<Lorg/wlf/filedownloader/DownloadFileInfo;>;"
    .local p1, "downloadFilesMoved":Ljava/util/List;, "Ljava/util/List<Lorg/wlf/filedownloader/DownloadFileInfo;>;"
    if-nez p2, :cond_0

    .line 122
    :goto_0
    return-void

    .line 112
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 113
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener$MainThreadHelper$3;

    invoke-direct {v1, p2, p0, p1}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener$MainThreadHelper$3;-><init>(Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static onMoveDownloadFilesPrepared(Ljava/util/List;Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;)V
    .locals 2
    .param p1, "onMoveDownloadFilesListener"    # Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/wlf/filedownloader/DownloadFileInfo;",
            ">;",
            "Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "downloadFilesNeedMove":Ljava/util/List;, "Ljava/util/List<Lorg/wlf/filedownloader/DownloadFileInfo;>;"
    if-nez p1, :cond_0

    .line 72
    :goto_0
    return-void

    .line 62
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 63
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener$MainThreadHelper$1;

    invoke-direct {v1, p1, p0}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener$MainThreadHelper$1;-><init>(Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static onMovingDownloadFiles(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;)V
    .locals 7
    .param p3, "downloadFileMoving"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p4, "onMoveDownloadFilesListener"    # Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;
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
            "Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "downloadFilesNeedMove":Ljava/util/List;, "Ljava/util/List<Lorg/wlf/filedownloader/DownloadFileInfo;>;"
    .local p1, "downloadFilesMoved":Ljava/util/List;, "Ljava/util/List<Lorg/wlf/filedownloader/DownloadFileInfo;>;"
    .local p2, "downloadFilesSkip":Ljava/util/List;, "Ljava/util/List<Lorg/wlf/filedownloader/DownloadFileInfo;>;"
    if-nez p4, :cond_0

    .line 99
    :goto_0
    return-void

    .line 88
    :cond_0
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 89
    .local v6, "handler":Landroid/os/Handler;
    new-instance v0, Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener$MainThreadHelper$2;

    move-object v1, p4

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener$MainThreadHelper$2;-><init>(Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/wlf/filedownloader/DownloadFileInfo;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

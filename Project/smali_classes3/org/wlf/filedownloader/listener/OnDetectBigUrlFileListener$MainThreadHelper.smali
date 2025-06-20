.class public Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper;
.super Ljava/lang/Object;
.source "OnDetectBigUrlFileListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainThreadHelper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onDetectNewDownloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;)V
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "saveDir"    # Ljava/lang/String;
    .param p3, "fileSize"    # J
    .param p5, "nnDetectBigUrlFileListener"    # Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;

    .prologue
    .line 59
    if-nez p5, :cond_0

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
    new-instance v1, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper$1;

    move-object v2, p5

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper$1;-><init>(Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static onDetectUrlFileExist(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "nnDetectBigUrlFileListener"    # Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 84
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 85
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper$2;

    invoke-direct {v1, p1, p0}, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper$2;-><init>(Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static onDetectUrlFileFailed(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "failReason"    # Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;
    .param p2, "nnDetectBigUrlFileListener"    # Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;

    .prologue
    .line 104
    if-nez p2, :cond_0

    .line 117
    :goto_0
    return-void

    .line 107
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 108
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper$3;

    invoke-direct {v1, p2, p0, p1}, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper$3;-><init>(Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.class Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;
.super Ljava/lang/Object;
.source "DownloadStatusObserver.java"

# interfaces
.implements Lorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDownloadStatusListenerInfos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->mDownloadStatusListenerInfos:Ljava/util/Set;

    .line 582
    return-void
.end method

.method private notifyStatusCompleted(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V
    .locals 4
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p2, "listener"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    .prologue
    .line 246
    invoke-static {p1, p2}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper;->onFileDownloadStatusCompleted(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    .line 248
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "url":Ljava/lang/String;
    :goto_0
    sget-object v1, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file-downloader-listener \u901a\u77e5\u3010\u6587\u4ef6\u4e0b\u8f7d\u72b6\u6001\u4e3a\u5b8c\u6210\u3011\uff0c\u6587\u4ef6\u7684url\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void

    .line 248
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    const-string v0, "unknown"

    goto :goto_0
.end method

.method private notifyStatusDownloading(Lorg/wlf/filedownloader/DownloadFileInfo;FJLorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V
    .locals 5
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p2, "downloadSpeed"    # F
    .param p3, "remainingTime"    # J
    .param p5, "listener"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    .prologue
    .line 221
    invoke-static {p1, p2, p3, p4, p5}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper;->onFileDownloadStatusDownloading(Lorg/wlf/filedownloader/DownloadFileInfo;FJLorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    .line 224
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "url":Ljava/lang/String;
    :goto_0
    sget-object v1, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file-downloader-listener \u901a\u77e5\u3010\u6587\u4ef6\u4e0b\u8f7d\u72b6\u6001\u4e3a\u6b63\u5728\u4e0b\u8f7d\u3011\uff0c\u6587\u4ef6\u7684url\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void

    .line 224
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    const-string v0, "unknown"

    goto :goto_0
.end method

.method private notifyStatusFailed(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p3, "failReason"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    .param p4, "listener"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    .prologue
    .line 259
    invoke-static {p1, p2, p3, p4}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper;->onFileDownloadStatusFailed(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    .line 262
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "downloadFileUrl":Ljava/lang/String;
    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "failMsg":Ljava/lang/String;
    :goto_1
    sget-object v2, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file-downloader-listener \u901a\u77e5\u3010\u6587\u4ef6\u4e0b\u8f7d\u72b6\u6001\u4e3a\u5931\u8d25\u3011\uff0c\u6587\u4ef6\u7684url\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff0cdownloadFileUrl\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff0c\u5931\u8d25\u539f\u56e0\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void

    .line 262
    .end local v0    # "downloadFileUrl":Ljava/lang/String;
    .end local v1    # "failMsg":Ljava/lang/String;
    :cond_0
    const-string v0, "unknown"

    goto :goto_0

    .line 263
    .restart local v0    # "downloadFileUrl":Ljava/lang/String;
    :cond_1
    const-string v1, "unknown"

    goto :goto_1
.end method

.method private notifyStatusPaused(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V
    .locals 4
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p2, "listener"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    .prologue
    .line 234
    invoke-static {p1, p2}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper;->onFileDownloadStatusPaused(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    .line 236
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "url":Ljava/lang/String;
    :goto_0
    sget-object v1, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file-downloader-listener \u901a\u77e5\u3010\u6587\u4ef6\u4e0b\u8f7d\u72b6\u6001\u4e3a\u6682\u505c\u3011\uff0c\u6587\u4ef6\u7684url\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void

    .line 236
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    const-string v0, "unknown"

    goto :goto_0
.end method

.method private notifyStatusPrepared(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V
    .locals 4
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p2, "listener"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    .prologue
    .line 208
    invoke-static {p1, p2}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper;->onFileDownloadStatusPrepared(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    .line 210
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "url":Ljava/lang/String;
    :goto_0
    sget-object v1, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file-downloader-listener \u901a\u77e5\u3010\u6587\u4ef6\u4e0b\u8f7d\u72b6\u6001\u4e3a\u5df2\u51c6\u5907\uff08\u5df2\u8fde\u63a5\uff09\u3011\uff0c\u6587\u4ef6\u7684url\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void

    .line 210
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    const-string v0, "unknown"

    goto :goto_0
.end method

.method private notifyStatusPreparing(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V
    .locals 4
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p2, "listener"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    .prologue
    .line 196
    invoke-static {p1, p2}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper;->onFileDownloadStatusPreparing(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    .line 198
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "url":Ljava/lang/String;
    :goto_0
    sget-object v1, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file-downloader-listener \u901a\u77e5\u3010\u6587\u4ef6\u4e0b\u8f7d\u72b6\u6001\u4e3a\u51c6\u5907\u4e2d\uff08\u6b63\u5728\u8fde\u63a5\uff09\u3011\uff0c\u6587\u4ef6\u7684url\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void

    .line 198
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    const-string v0, "unknown"

    goto :goto_0
.end method

.method private notifyStatusRetrying(Lorg/wlf/filedownloader/DownloadFileInfo;ILorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V
    .locals 4
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p2, "retryTimes"    # I
    .param p3, "listener"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    .prologue
    .line 180
    instance-of v1, p3, Lorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener;

    if-eqz v1, :cond_0

    .line 182
    check-cast p3, Lorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener;

    .end local p3    # "listener":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;
    invoke-static {p1, p2, p3}, Lorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener$MainThreadHelper;->onFileDownloadStatusRetrying(Lorg/wlf/filedownloader/DownloadFileInfo;ILorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener;)V

    .line 185
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "url":Ljava/lang/String;
    :goto_0
    sget-object v1, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file-downloader-listener \u901a\u77e5\u3010\u6587\u4ef6\u4e0b\u8f7d\u72b6\u6001\u4e3a\u91cd\u8bd5\u3011\uff0c\u91cd\u8bd5\u6b21\u6570\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff0c\u6587\u4ef6\u7684url\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    return-void

    .line 185
    :cond_1
    const-string v0, "unknown"

    goto :goto_0
.end method

.method private notifyStatusWaiting(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V
    .locals 4
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p2, "listener"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    .prologue
    .line 168
    invoke-static {p1, p2}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper;->onFileDownloadStatusWaiting(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    .line 170
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "url":Ljava/lang/String;
    :goto_0
    sget-object v1, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file-downloader-listener \u901a\u77e5\u3010\u6587\u4ef6\u4e0b\u8f7d\u72b6\u6001\u4e3a\u7b49\u5f85\u3011\uff0c\u6587\u4ef6\u7684url\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void

    .line 170
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    const-string v0, "unknown"

    goto :goto_0
.end method


# virtual methods
.method public addOnFileDownloadStatusListener(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;Lorg/wlf/filedownloader/DownloadStatusConfiguration;)V
    .locals 6
    .param p1, "onFileDownloadStatusListener"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;
    .param p2, "downloadStatusConfiguration"    # Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    .prologue
    .line 38
    if-nez p1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v3, p0, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->mDownloadStatusListenerInfos:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;

    .line 43
    .local v1, "listenerInfo":Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;
    if-eqz v1, :cond_0

    .line 47
    invoke-static {v1}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v3

    if-ne v3, p1, :cond_2

    goto :goto_0

    .line 53
    .end local v1    # "listenerInfo":Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;
    :cond_3
    new-instance v1, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;

    invoke-direct {v1, p2, p1}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;-><init>(Lorg/wlf/filedownloader/DownloadStatusConfiguration;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    .line 55
    .restart local v1    # "listenerInfo":Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;
    iget-object v3, p0, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->mDownloadStatusListenerInfos:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lorg/wlf/filedownloader/DownloadStatusConfiguration;->getListenUrls()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Lorg/wlf/filedownloader/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p2}, Lorg/wlf/filedownloader/DownloadStatusConfiguration;->getListenUrls()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "urls":Ljava/lang/String;
    :goto_1
    sget-object v3, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file-downloader-listener \u6dfb\u52a0\u3010\u6587\u4ef6\u4e0b\u8f7d\u72b6\u6001\u76d1\u542c\u5668\u3011\u6210\u529f\uff0c\u8be5listener\u76d1\u542c\u7684urls\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    .end local v2    # "urls":Ljava/lang/String;
    :cond_4
    const-string v2, "all"

    goto :goto_1
.end method

.method public onFileDownloadStatusCompleted(Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 7
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    .line 496
    invoke-static {p1}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 531
    :cond_0
    return-void

    .line 500
    :cond_1
    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 502
    .local v4, "url":Ljava/lang/String;
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->mDownloadStatusListenerInfos:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;

    .line 504
    .local v3, "listenerInfo":Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;
    if-eqz v3, :cond_2

    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v5

    if-eq v5, p0, :cond_2

    .line 509
    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$100(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$100(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/wlf/filedownloader/DownloadStatusConfiguration;->getListenUrls()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Lorg/wlf/filedownloader/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 511
    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$100(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/wlf/filedownloader/DownloadStatusConfiguration;->getListenUrls()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 512
    .local v2, "listenUrl":Ljava/lang/String;
    invoke-static {v2}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 515
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 517
    :cond_4
    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->notifyStatusCompleted(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    .line 519
    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$100(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/wlf/filedownloader/DownloadStatusConfiguration;->isAutoRelease()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 520
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->mDownloadStatusListenerInfos:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 528
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listenUrl":Ljava/lang/String;
    :cond_5
    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->notifyStatusCompleted(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    goto :goto_0
.end method

.method public onFileDownloadStatusDownloading(Lorg/wlf/filedownloader/DownloadFileInfo;FJ)V
    .locals 11
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p2, "downloadSpeed"    # F
    .param p3, "remainingTime"    # J

    .prologue
    .line 419
    invoke-static {p1}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 451
    :cond_0
    return-void

    .line 423
    :cond_1
    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v10

    .line 425
    .local v10, "url":Ljava/lang/String;
    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->mDownloadStatusListenerInfos:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;

    .line 427
    .local v9, "listenerInfo":Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;
    if-eqz v9, :cond_2

    invoke-static {v9}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v9}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v1

    if-eq v1, p0, :cond_2

    .line 432
    invoke-static {v9}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$100(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v9}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$100(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wlf/filedownloader/DownloadStatusConfiguration;->getListenUrls()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lorg/wlf/filedownloader/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 434
    invoke-static {v9}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$100(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wlf/filedownloader/DownloadStatusConfiguration;->getListenUrls()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 435
    .local v8, "listenUrl":Ljava/lang/String;
    invoke-static {v8}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 439
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 441
    :cond_4
    invoke-static {v9}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->notifyStatusDownloading(Lorg/wlf/filedownloader/DownloadFileInfo;FJLorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    goto :goto_1

    .line 448
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "listenUrl":Ljava/lang/String;
    :cond_5
    invoke-static {v9}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->notifyStatusDownloading(Lorg/wlf/filedownloader/DownloadFileInfo;FJLorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    goto :goto_0
.end method

.method public onFileDownloadStatusFailed(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p3, "failReason"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    .prologue
    .line 537
    invoke-static {p1}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 570
    :cond_0
    return-void

    .line 541
    :cond_1
    iget-object v4, p0, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->mDownloadStatusListenerInfos:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;

    .line 543
    .local v3, "listenerInfo":Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;
    if-eqz v3, :cond_2

    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v4

    if-eq v4, p0, :cond_2

    .line 548
    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$100(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$100(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/wlf/filedownloader/DownloadStatusConfiguration;->getListenUrls()Ljava/util/Set;

    move-result-object v4

    invoke-static {v4}, Lorg/wlf/filedownloader/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 550
    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$100(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/wlf/filedownloader/DownloadStatusConfiguration;->getListenUrls()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 551
    .local v2, "listenUrl":Ljava/lang/String;
    invoke-static {v2}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 554
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 556
    :cond_4
    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v4

    invoke-direct {p0, p1, p2, p3, v4}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->notifyStatusFailed(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    .line 558
    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$100(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/wlf/filedownloader/DownloadStatusConfiguration;->isAutoRelease()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 559
    iget-object v4, p0, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->mDownloadStatusListenerInfos:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 567
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listenUrl":Ljava/lang/String;
    :cond_5
    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v4

    invoke-direct {p0, p1, p2, p3, v4}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->notifyStatusFailed(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    goto :goto_0
.end method

.method public onFileDownloadStatusPaused(Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 7
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    .line 456
    invoke-static {p1}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 491
    :cond_0
    return-void

    .line 460
    :cond_1
    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 462
    .local v4, "url":Ljava/lang/String;
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->mDownloadStatusListenerInfos:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;

    .line 464
    .local v3, "listenerInfo":Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;
    if-eqz v3, :cond_2

    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v5

    if-eq v5, p0, :cond_2

    .line 469
    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$100(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$100(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/wlf/filedownloader/DownloadStatusConfiguration;->getListenUrls()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Lorg/wlf/filedownloader/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 471
    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$100(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/wlf/filedownloader/DownloadStatusConfiguration;->getListenUrls()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 472
    .local v2, "listenUrl":Ljava/lang/String;
    invoke-static {v2}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 475
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 477
    :cond_4
    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->notifyStatusPaused(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    .line 479
    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$100(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/wlf/filedownloader/DownloadStatusConfiguration;->isAutoRelease()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 480
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->mDownloadStatusListenerInfos:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 488
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listenUrl":Ljava/lang/String;
    :cond_5
    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->notifyStatusPaused(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    goto :goto_0
.end method

.method public onFileDownloadStatusPrepared(Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 7
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    .line 382
    invoke-static {p1}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 413
    :cond_0
    return-void

    .line 386
    :cond_1
    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 388
    .local v4, "url":Ljava/lang/String;
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->mDownloadStatusListenerInfos:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;

    .line 390
    .local v3, "listenerInfo":Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;
    if-eqz v3, :cond_2

    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v5

    if-eq v5, p0, :cond_2

    .line 395
    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$100(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$100(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/wlf/filedownloader/DownloadStatusConfiguration;->getListenUrls()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Lorg/wlf/filedownloader/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 397
    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$100(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/wlf/filedownloader/DownloadStatusConfiguration;->getListenUrls()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 398
    .local v2, "listenUrl":Ljava/lang/String;
    invoke-static {v2}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 401
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 403
    :cond_4
    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->notifyStatusPrepared(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    goto :goto_1

    .line 410
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listenUrl":Ljava/lang/String;
    :cond_5
    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->notifyStatusPrepared(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    goto :goto_0
.end method

.method public onFileDownloadStatusPreparing(Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 7
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    .line 346
    invoke-static {p1}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 377
    :cond_0
    return-void

    .line 350
    :cond_1
    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 352
    .local v4, "url":Ljava/lang/String;
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->mDownloadStatusListenerInfos:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;

    .line 354
    .local v3, "listenerInfo":Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;
    if-eqz v3, :cond_2

    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v5

    if-eq v5, p0, :cond_2

    .line 359
    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$100(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$100(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/wlf/filedownloader/DownloadStatusConfiguration;->getListenUrls()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Lorg/wlf/filedownloader/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 361
    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$100(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/wlf/filedownloader/DownloadStatusConfiguration;->getListenUrls()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 362
    .local v2, "listenUrl":Ljava/lang/String;
    invoke-static {v2}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 365
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 367
    :cond_4
    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->notifyStatusPreparing(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    goto :goto_1

    .line 374
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listenUrl":Ljava/lang/String;
    :cond_5
    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->notifyStatusPreparing(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    goto :goto_0
.end method

.method public onFileDownloadStatusRetrying(Lorg/wlf/filedownloader/DownloadFileInfo;I)V
    .locals 7
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p2, "retryTimes"    # I

    .prologue
    .line 308
    invoke-static {p1}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 340
    :cond_0
    return-void

    .line 312
    :cond_1
    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, "url":Ljava/lang/String;
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->mDownloadStatusListenerInfos:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;

    .line 316
    .local v3, "listenerInfo":Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;
    if-eqz v3, :cond_2

    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v5

    if-eq v5, p0, :cond_2

    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v5

    instance-of v5, v5, Lorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener;

    if-eqz v5, :cond_2

    .line 322
    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$100(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$100(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/wlf/filedownloader/DownloadStatusConfiguration;->getListenUrls()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Lorg/wlf/filedownloader/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 324
    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$100(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/wlf/filedownloader/DownloadStatusConfiguration;->getListenUrls()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 325
    .local v2, "listenUrl":Ljava/lang/String;
    invoke-static {v2}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 328
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 330
    :cond_4
    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v5

    invoke-direct {p0, p1, p2, v5}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->notifyStatusRetrying(Lorg/wlf/filedownloader/DownloadFileInfo;ILorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    goto :goto_1

    .line 337
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listenUrl":Ljava/lang/String;
    :cond_5
    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v5

    invoke-direct {p0, p1, p2, v5}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->notifyStatusRetrying(Lorg/wlf/filedownloader/DownloadFileInfo;ILorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    goto :goto_0
.end method

.method public onFileDownloadStatusWaiting(Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 7
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    .line 272
    invoke-static {p1}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 303
    :cond_0
    return-void

    .line 276
    :cond_1
    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, "url":Ljava/lang/String;
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->mDownloadStatusListenerInfos:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;

    .line 280
    .local v3, "listenerInfo":Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;
    if-eqz v3, :cond_2

    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v5

    if-eq v5, p0, :cond_2

    .line 285
    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$100(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$100(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/wlf/filedownloader/DownloadStatusConfiguration;->getListenUrls()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Lorg/wlf/filedownloader/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 287
    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$100(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/wlf/filedownloader/DownloadStatusConfiguration;->getListenUrls()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 288
    .local v2, "listenUrl":Ljava/lang/String;
    invoke-static {v2}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 291
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 293
    :cond_4
    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->notifyStatusWaiting(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    goto :goto_1

    .line 300
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listenUrl":Ljava/lang/String;
    :cond_5
    invoke-static {v3}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->notifyStatusWaiting(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->mDownloadStatusListenerInfos:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 577
    return-void
.end method

.method public removeOnFileDownloadStatusListener(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V
    .locals 6
    .param p1, "onFileDownloadStatusListener"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    .prologue
    .line 69
    if-nez p1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v3, p0, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->mDownloadStatusListenerInfos:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;

    .line 74
    .local v1, "listenerInfo":Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;
    if-eqz v1, :cond_2

    .line 78
    invoke-static {v1}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 80
    iget-object v3, p0, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->mDownloadStatusListenerInfos:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 82
    invoke-static {v1}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$100(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v1}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$100(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wlf/filedownloader/DownloadStatusConfiguration;->getListenUrls()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Lorg/wlf/filedownloader/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v1}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->access$100(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wlf/filedownloader/DownloadStatusConfiguration;->getListenUrls()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "urls":Ljava/lang/String;
    :goto_1
    sget-object v3, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file-downloader-listener \u79fb\u9664\u3010\u6587\u4ef6\u4e0b\u8f7d\u72b6\u6001\u76d1\u542c\u5668\u3011\u6210\u529f\uff0c\u8be5listener\u76d1\u542c\u7684urls\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    .end local v2    # "urls":Ljava/lang/String;
    :cond_3
    const-string v2, "all"

    goto :goto_1
.end method

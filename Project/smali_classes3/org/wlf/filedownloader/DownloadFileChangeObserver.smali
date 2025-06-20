.class Lorg/wlf/filedownloader/DownloadFileChangeObserver;
.super Ljava/lang/Object;
.source "DownloadFileChangeObserver.java"

# interfaces
.implements Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mOnDownloadFileChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lorg/wlf/filedownloader/DownloadFileChangeObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/DownloadFileChangeObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/wlf/filedownloader/DownloadFileChangeObserver;->mOnDownloadFileChangeListeners:Ljava/util/Set;

    .line 301
    return-void
.end method

.method private notifyDownloadFileCreated(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;Z)V
    .locals 5
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p2, "listener"    # Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;
    .param p3, "sync"    # Z

    .prologue
    .line 97
    if-eqz p3, :cond_1

    .line 100
    if-eqz p2, :cond_0

    .line 101
    :try_start_0
    invoke-interface {p2, p1}, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;->onDownloadFileCreated(Lorg/wlf/filedownloader/DownloadFileInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "url":Ljava/lang/String;
    :goto_1
    sget-object v2, Lorg/wlf/filedownloader/DownloadFileChangeObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file-downloader-listener \u901a\u77e5\u3010\u4e0b\u8f7d\u6587\u4ef6\u88ab\u521b\u5efa\u3011\uff0c\u88ab\u521b\u5efa\u6587\u4ef6\u7684url\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void

    .line 103
    .end local v1    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {p1, p2}, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$MainThreadHelper;->onDownloadFileCreated(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;)V

    goto :goto_0

    .line 111
    :cond_2
    const-string v1, "unknown"

    goto :goto_1
.end method

.method private notifyDownloadFileDeleted(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;Z)V
    .locals 5
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p2, "listener"    # Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;
    .param p3, "sync"    # Z

    .prologue
    .line 148
    if-eqz p3, :cond_1

    .line 151
    if-eqz p2, :cond_0

    .line 152
    :try_start_0
    invoke-interface {p2, p1}, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;->onDownloadFileDeleted(Lorg/wlf/filedownloader/DownloadFileInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "url":Ljava/lang/String;
    :goto_1
    sget-object v2, Lorg/wlf/filedownloader/DownloadFileChangeObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file-downloader-listener \u901a\u77e5\u3010\u4e0b\u8f7d\u6587\u4ef6\u88ab\u5220\u9664\u3011\uff0c\u88ab\u5220\u9664\u6587\u4ef6\u7684url\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void

    .line 154
    .end local v1    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 159
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {p1, p2}, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$MainThreadHelper;->onDownloadFileDeleted(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;)V

    goto :goto_0

    .line 161
    :cond_2
    const-string v1, "unknown"

    goto :goto_1
.end method

.method private notifyDownloadFileUpdated(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;Z)V
    .locals 6
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p2, "type"    # Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;
    .param p3, "listener"    # Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;
    .param p4, "sync"    # Z

    .prologue
    .line 122
    if-eqz p4, :cond_1

    .line 125
    if-eqz p3, :cond_0

    .line 126
    :try_start_0
    invoke-interface {p3, p1, p2}, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;->onDownloadFileUpdated(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "url":Ljava/lang/String;
    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;->name()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "typeName":Ljava/lang/String;
    :goto_2
    sget-object v3, Lorg/wlf/filedownloader/DownloadFileChangeObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file-downloader-listener \u901a\u77e5\u3010\u4e0b\u8f7d\u6587\u4ef6\u88ab\u66f4\u65b0\u3011\uff0c\u66f4\u65b0\u7c7b\u578b\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\uff0c\u88ab\u66f4\u65b0\u6587\u4ef6\u7684url\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void

    .line 128
    .end local v1    # "typeName":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {p1, p2, p3}, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$MainThreadHelper;->onDownloadFileUpdated(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;)V

    goto :goto_0

    .line 136
    :cond_2
    const-string v2, "unknown"

    goto :goto_1

    .line 137
    .restart local v2    # "url":Ljava/lang/String;
    :cond_3
    const-string v1, "unknown"

    goto :goto_2
.end method


# virtual methods
.method public addOnDownloadFileChangeListener(Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;)V
    .locals 6
    .param p1, "onDownloadFileChangeListener"    # Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;
    .param p2, "downloadFileChangeConfiguration"    # Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;

    .prologue
    .line 34
    if-nez p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    iget-object v3, p0, Lorg/wlf/filedownloader/DownloadFileChangeObserver;->mOnDownloadFileChangeListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;

    .line 39
    .local v1, "listenerInfo":Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;
    if-eqz v1, :cond_0

    .line 43
    invoke-static {v1}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$000(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;

    move-result-object v3

    if-ne v3, p1, :cond_2

    goto :goto_0

    .line 49
    .end local v1    # "listenerInfo":Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;
    :cond_3
    new-instance v1, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;

    invoke-direct {v1, p0, p2, p1}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;-><init>(Lorg/wlf/filedownloader/DownloadFileChangeObserver;Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;)V

    .line 51
    .restart local v1    # "listenerInfo":Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;
    iget-object v3, p0, Lorg/wlf/filedownloader/DownloadFileChangeObserver;->mOnDownloadFileChangeListeners:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;->getListenUrls()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Lorg/wlf/filedownloader/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p2}, Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;->getListenUrls()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "urls":Ljava/lang/String;
    :goto_1
    sget-object v3, Lorg/wlf/filedownloader/DownloadFileChangeObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file-downloader-listener \u6dfb\u52a0\u3010\u4e0b\u8f7d\u6587\u4ef6\u6539\u53d8\u76d1\u542c\u5668\u3011\u6210\u529f\uff0c\u8be5listener\u76d1\u542c\u7684urls\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 53
    .end local v2    # "urls":Ljava/lang/String;
    :cond_4
    const-string v2, "all"

    goto :goto_1
.end method

.method public onDownloadFileCreated(Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 8
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    .line 171
    invoke-static {p1}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 207
    :cond_0
    return-void

    .line 175
    :cond_1
    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, "url":Ljava/lang/String;
    iget-object v6, p0, Lorg/wlf/filedownloader/DownloadFileChangeObserver;->mOnDownloadFileChangeListeners:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;

    .line 179
    .local v4, "listenerInfo":Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;
    if-eqz v4, :cond_2

    invoke-static {v4}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$000(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {v4}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$000(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;

    move-result-object v6

    if-eq v6, p0, :cond_2

    .line 184
    invoke-static {v4}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$100(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-static {v4}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$100(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;->getListenUrls()Ljava/util/Set;

    move-result-object v6

    invoke-static {v6}, Lorg/wlf/filedownloader/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 186
    invoke-static {v4}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$100(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;->getListenUrls()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 187
    .local v3, "listenUrl":Ljava/lang/String;
    invoke-static {v3}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 190
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 192
    :cond_4
    invoke-static {v4}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$000(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;

    move-result-object v6

    invoke-static {v4}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$100(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;->isTreadCallback()Z

    move-result v7

    invoke-direct {p0, p1, v6, v7}, Lorg/wlf/filedownloader/DownloadFileChangeObserver;->notifyDownloadFileCreated(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;Z)V

    goto :goto_1

    .line 200
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "listenUrl":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    .line 201
    .local v2, "isSyncCallback":Z
    invoke-static {v4}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$100(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 202
    invoke-static {v4}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$100(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;->isTreadCallback()Z

    move-result v2

    .line 204
    :cond_6
    invoke-static {v4}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$000(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;

    move-result-object v6

    invoke-direct {p0, p1, v6, v2}, Lorg/wlf/filedownloader/DownloadFileChangeObserver;->notifyDownloadFileCreated(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;Z)V

    goto/16 :goto_0
.end method

.method public onDownloadFileDeleted(Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 8
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    .line 253
    invoke-static {p1}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 289
    :cond_0
    return-void

    .line 257
    :cond_1
    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 259
    .local v5, "url":Ljava/lang/String;
    iget-object v6, p0, Lorg/wlf/filedownloader/DownloadFileChangeObserver;->mOnDownloadFileChangeListeners:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;

    .line 261
    .local v4, "listenerInfo":Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;
    if-eqz v4, :cond_2

    invoke-static {v4}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$000(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {v4}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$000(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;

    move-result-object v6

    if-eq v6, p0, :cond_2

    .line 266
    invoke-static {v4}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$100(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-static {v4}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$100(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;->getListenUrls()Ljava/util/Set;

    move-result-object v6

    invoke-static {v6}, Lorg/wlf/filedownloader/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 268
    invoke-static {v4}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$100(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;->getListenUrls()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 269
    .local v3, "listenUrl":Ljava/lang/String;
    invoke-static {v3}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 272
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 274
    :cond_4
    invoke-static {v4}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$000(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;

    move-result-object v6

    invoke-static {v4}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$100(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;->isTreadCallback()Z

    move-result v7

    invoke-direct {p0, p1, v6, v7}, Lorg/wlf/filedownloader/DownloadFileChangeObserver;->notifyDownloadFileDeleted(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;Z)V

    goto :goto_1

    .line 282
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "listenUrl":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    .line 283
    .local v2, "isSyncCallback":Z
    invoke-static {v4}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$100(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 284
    invoke-static {v4}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$100(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;->isTreadCallback()Z

    move-result v2

    .line 286
    :cond_6
    invoke-static {v4}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$000(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;

    move-result-object v6

    invoke-direct {p0, p1, v6, v2}, Lorg/wlf/filedownloader/DownloadFileChangeObserver;->notifyDownloadFileDeleted(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;Z)V

    goto/16 :goto_0
.end method

.method public onDownloadFileUpdated(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;)V
    .locals 8
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p2, "type"    # Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    .prologue
    .line 212
    invoke-static {p1}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 248
    :cond_0
    return-void

    .line 216
    :cond_1
    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 218
    .local v5, "url":Ljava/lang/String;
    iget-object v6, p0, Lorg/wlf/filedownloader/DownloadFileChangeObserver;->mOnDownloadFileChangeListeners:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;

    .line 220
    .local v4, "listenerInfo":Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;
    if-eqz v4, :cond_2

    invoke-static {v4}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$000(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {v4}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$000(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;

    move-result-object v6

    if-eq v6, p0, :cond_2

    .line 225
    invoke-static {v4}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$100(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-static {v4}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$100(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;->getListenUrls()Ljava/util/Set;

    move-result-object v6

    invoke-static {v6}, Lorg/wlf/filedownloader/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 227
    invoke-static {v4}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$100(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;->getListenUrls()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 228
    .local v3, "listenUrl":Ljava/lang/String;
    invoke-static {v3}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 231
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 233
    :cond_4
    invoke-static {v4}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$000(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;

    move-result-object v6

    invoke-static {v4}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$100(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;->isTreadCallback()Z

    move-result v7

    invoke-direct {p0, p1, p2, v6, v7}, Lorg/wlf/filedownloader/DownloadFileChangeObserver;->notifyDownloadFileUpdated(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;Z)V

    goto :goto_1

    .line 241
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "listenUrl":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    .line 242
    .local v2, "isSyncCallback":Z
    invoke-static {v4}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$100(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 243
    invoke-static {v4}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$100(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;->isTreadCallback()Z

    move-result v2

    .line 245
    :cond_6
    invoke-static {v4}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$000(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;

    move-result-object v6

    invoke-direct {p0, p1, p2, v6, v2}, Lorg/wlf/filedownloader/DownloadFileChangeObserver;->notifyDownloadFileUpdated(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;Z)V

    goto/16 :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadFileChangeObserver;->mOnDownloadFileChangeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 296
    return-void
.end method

.method public removeOnDownloadFileChangeListener(Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;)V
    .locals 6
    .param p1, "onDownloadFileChangeListener"    # Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;

    .prologue
    .line 66
    if-nez p1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v3, p0, Lorg/wlf/filedownloader/DownloadFileChangeObserver;->mOnDownloadFileChangeListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;

    .line 71
    .local v1, "listenerInfo":Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;
    if-eqz v1, :cond_2

    .line 74
    invoke-static {v1}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$000(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 76
    iget-object v3, p0, Lorg/wlf/filedownloader/DownloadFileChangeObserver;->mOnDownloadFileChangeListeners:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 78
    invoke-static {v1}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$100(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v1}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$100(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;->getListenUrls()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Lorg/wlf/filedownloader/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v1}, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->access$100(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;->getListenUrls()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "urls":Ljava/lang/String;
    :goto_1
    sget-object v3, Lorg/wlf/filedownloader/DownloadFileChangeObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file-downloader-listener \u79fb\u9664\u3010\u4e0b\u8f7d\u6587\u4ef6\u6539\u53d8\u76d1\u542c\u5668\u3011\u6210\u529f\uff0c\u8be5listener\u76d1\u542c\u7684urls\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    .end local v2    # "urls":Ljava/lang/String;
    :cond_3
    const-string v2, "all"

    goto :goto_1
.end method

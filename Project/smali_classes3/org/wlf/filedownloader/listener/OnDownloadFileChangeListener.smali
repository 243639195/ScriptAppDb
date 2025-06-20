.class public interface abstract Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;
.super Ljava/lang/Object;
.source "OnDownloadFileChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;,
        Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$MainThreadHelper;
    }
.end annotation


# virtual methods
.method public abstract onDownloadFileCreated(Lorg/wlf/filedownloader/DownloadFileInfo;)V
.end method

.method public abstract onDownloadFileDeleted(Lorg/wlf/filedownloader/DownloadFileInfo;)V
.end method

.method public abstract onDownloadFileUpdated(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;)V
.end method

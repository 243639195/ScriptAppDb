.class public interface abstract Lorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener;
.super Ljava/lang/Object;
.source "OnRetryableFileDownloadStatusListener.java"

# interfaces
.implements Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener$MainThreadHelper;
    }
.end annotation


# virtual methods
.method public abstract onFileDownloadStatusRetrying(Lorg/wlf/filedownloader/DownloadFileInfo;I)V
.end method

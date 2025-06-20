.class public interface abstract Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;
.super Ljava/lang/Object;
.source "OnStopFileDownloadTaskListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;
    }
.end annotation


# virtual methods
.method public abstract onStopFileDownloadTaskFailed(Ljava/lang/String;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;)V
.end method

.method public abstract onStopFileDownloadTaskSucceed(Ljava/lang/String;)V
.end method

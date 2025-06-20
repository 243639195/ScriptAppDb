.class public interface abstract Lorg/wlf/filedownloader/file_download/base/DownloadTask;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/wlf/filedownloader/base/Stoppable;


# virtual methods
.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract setOnStopFileDownloadTaskListener(Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;)V
.end method

.method public abstract setOnTaskRunFinishListener(Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;)V
.end method

.class public interface abstract Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;
.super Ljava/lang/Object;
.source "DownloadRecorder.java"

# interfaces
.implements Lorg/wlf/filedownloader/file_download/db_recorder/DownloadFileDbRecorder;


# virtual methods
.method public abstract createDownloadFileInfo(Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;)Lorg/wlf/filedownloader/DownloadFileInfo;
.end method

.method public abstract resetDownloadFile(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract resetDownloadSize(Ljava/lang/String;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

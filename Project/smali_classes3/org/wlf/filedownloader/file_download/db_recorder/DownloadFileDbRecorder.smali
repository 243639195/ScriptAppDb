.class public interface abstract Lorg/wlf/filedownloader/file_download/db_recorder/DownloadFileDbRecorder;
.super Ljava/lang/Object;
.source "DownloadFileDbRecorder.java"

# interfaces
.implements Lorg/wlf/filedownloader/file_download/db_recorder/Record;


# virtual methods
.method public abstract getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;
.end method

.method public abstract getDownloadFiles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/wlf/filedownloader/DownloadFileInfo;",
            ">;"
        }
    .end annotation
.end method

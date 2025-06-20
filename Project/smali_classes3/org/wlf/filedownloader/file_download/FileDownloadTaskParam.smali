.class Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;
.super Ljava/lang/Object;
.source "FileDownloadTaskParam.java"


# instance fields
.field private mAcceptRangeType:Ljava/lang/String;

.field private mETag:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mFileTotalSize:J

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastModified:Ljava/lang/String;

.field private mRequestMethod:Ljava/lang/String;

.field private mStartPosInTotal:J

.field private mTempFilePath:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "startPosInTotal"    # J
    .param p4, "fileTotalSize"    # J
    .param p6, "ETag"    # Ljava/lang/String;
    .param p7, "lastModified"    # Ljava/lang/String;
    .param p8, "acceptRangeType"    # Ljava/lang/String;
    .param p9, "tempFilePath"    # Ljava/lang/String;
    .param p10, "filePath"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "GET"

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->mRequestMethod:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->mUrl:Ljava/lang/String;

    .line 56
    iput-wide p2, p0, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->mStartPosInTotal:J

    .line 57
    iput-wide p4, p0, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->mFileTotalSize:J

    .line 58
    iput-object p6, p0, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->mETag:Ljava/lang/String;

    .line 59
    iput-object p7, p0, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->mLastModified:Ljava/lang/String;

    .line 60
    iput-object p8, p0, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->mAcceptRangeType:Ljava/lang/String;

    .line 61
    iput-object p9, p0, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->mTempFilePath:Ljava/lang/String;

    .line 62
    iput-object p10, p0, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->mFilePath:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public static createByDownloadFile(Lorg/wlf/filedownloader/DownloadFileInfo;Ljava/lang/String;Ljava/util/Map;)Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;
    .locals 11
    .param p0, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p1, "requestMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wlf/filedownloader/DownloadFileInfo;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;"
        }
    .end annotation

    .prologue
    .line 68
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    .line 72
    :cond_0
    new-instance v0, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getDownloadedSizeLong()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileSizeLong()J

    move-result-wide v4

    invoke-virtual {p0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getETag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getLastModified()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getAcceptRangeType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getTempFilePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .local v0, "fileDownloadTaskParam":Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;
    iput-object p1, v0, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->mRequestMethod:Ljava/lang/String;

    .line 77
    iput-object p2, v0, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->mHeaders:Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method public getAcceptRangeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->mAcceptRangeType:Ljava/lang/String;

    return-object v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->mETag:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileTotalSize()J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->mFileTotalSize:J

    return-wide v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getLastModified()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->mLastModified:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->mRequestMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPosInTotal()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->mStartPosInTotal:J

    return-wide v0
.end method

.method public getTempFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->mTempFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->mHeaders:Ljava/util/Map;

    .line 90
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestMethod"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->mRequestMethod:Ljava/lang/String;

    .line 86
    return-void
.end method

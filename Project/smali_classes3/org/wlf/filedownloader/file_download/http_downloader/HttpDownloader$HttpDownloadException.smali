.class public Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;
.super Lorg/wlf/filedownloader/file_download/base/HttpFailReason;
.source "HttpDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpDownloadException"
.end annotation


# static fields
.field public static final TYPE_CONTENT_RANGE_VALIDATE_FAIL:Ljava/lang/String;

.field public static final TYPE_ETAG_CHANGED:Ljava/lang/String;

.field public static final TYPE_REDIRECT_COUNT_OVER_LIMITS:Ljava/lang/String;

.field public static final TYPE_RESOURCES_SIZE_ILLEGAL:Ljava/lang/String;

.field public static final TYPE_RESPONSE_CODE_ERROR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_TYPE_REDIRECT_COUNT_OVER_LIMITS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;->TYPE_REDIRECT_COUNT_OVER_LIMITS:Ljava/lang/String;

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_TYPE_RESOURCES_SIZE_ILLEGAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;->TYPE_RESOURCES_SIZE_ILLEGAL:Ljava/lang/String;

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_TYPE_ETAG_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;->TYPE_ETAG_CHANGED:Ljava/lang/String;

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_TYPE_CONTENT_RANGE_VALIDATE_FAIL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;->TYPE_CONTENT_RANGE_VALIDATE_FAIL:Ljava/lang/String;

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_TYPE_RESPONSE_CODE_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;->TYPE_RESPONSE_CODE_ERROR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "detailMessage"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 377
    invoke-direct {p0, p1, p2, p3}, Lorg/wlf/filedownloader/file_download/base/HttpFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 381
    invoke-direct {p0, p1, p2}, Lorg/wlf/filedownloader/file_download/base/HttpFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 382
    return-void
.end method


# virtual methods
.method protected onInitTypeWithFailReason(Lorg/wlf/filedownloader/base/FailReason;)V
    .locals 3
    .param p1, "failReason"    # Lorg/wlf/filedownloader/base/FailReason;

    .prologue
    .line 386
    invoke-super {p0, p1}, Lorg/wlf/filedownloader/file_download/base/HttpFailReason;->onInitTypeWithFailReason(Lorg/wlf/filedownloader/base/FailReason;)V

    .line 388
    if-nez p1, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    instance-of v2, p1, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 397
    check-cast v0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;

    .line 398
    .local v0, "fileSaveException":Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;
    invoke-virtual {v0}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;->getType()Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, "type":Ljava/lang/String;
    sget-object v2, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;->TYPE_FILE_CAN_NOT_STORAGE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 402
    sget-object v2, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;->TYPE_RENAME_TEMP_FILE_ERROR:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 404
    sget-object v2, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;->TYPE_SAVER_HAS_BEEN_STOPPED:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 406
    sget-object v2, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;->TYPE_TEMP_FILE_DOES_NOT_EXIST:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

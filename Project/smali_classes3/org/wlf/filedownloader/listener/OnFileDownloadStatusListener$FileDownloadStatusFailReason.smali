.class public Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
.super Lorg/wlf/filedownloader/file_download/base/HttpFailReason;
.source "OnFileDownloadStatusListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileDownloadStatusFailReason"
.end annotation


# static fields
.field public static final TYPE_BAD_HTTP_RESPONSE_CODE:Ljava/lang/String;

.field public static final TYPE_DOWNLOAD_FILE_ERROR:Ljava/lang/String;

.field public static final TYPE_FILE_IS_DOWNLOADING:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_FILE_NOT_DETECT:Ljava/lang/String;

.field public static final TYPE_FILE_SAVE_PATH_ILLEGAL:Ljava/lang/String;

.field public static final TYPE_HTTP_FILE_NOT_EXIST:Ljava/lang/String;

.field public static final TYPE_RENAME_TEMP_FILE_ERROR:Ljava/lang/String;

.field public static final TYPE_SAVE_FILE_NOT_EXIST:Ljava/lang/String;

.field public static final TYPE_STORAGE_SPACE_CAN_NOT_WRITE:Ljava/lang/String;

.field public static final TYPE_STORAGE_SPACE_IS_FULL:Ljava/lang/String;

.field public static final TYPE_URL_FILE_CHANGED:Ljava/lang/String;

.field public static final TYPE_URL_ILLEGAL:Ljava/lang/String;

.field public static final TYPE_URL_OVER_REDIRECT_COUNT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_TYPE_URL_ILLEGAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->TYPE_URL_ILLEGAL:Ljava/lang/String;

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_TYPE_URL_OVER_REDIRECT_COUNT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->TYPE_URL_OVER_REDIRECT_COUNT:Ljava/lang/String;

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_TYPE_BAD_HTTP_RESPONSE_CODE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->TYPE_BAD_HTTP_RESPONSE_CODE:Ljava/lang/String;

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_TYPE_HTTP_FILE_NOT_EXIST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->TYPE_HTTP_FILE_NOT_EXIST:Ljava/lang/String;

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_TYPE_FILE_SAVE_PATH_ILLEGAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->TYPE_FILE_SAVE_PATH_ILLEGAL:Ljava/lang/String;

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_TYPE_STORAGE_SPACE_CAN_NOT_WRITE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->TYPE_STORAGE_SPACE_CAN_NOT_WRITE:Ljava/lang/String;

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_TYPE_RENAME_TEMP_FILE_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->TYPE_RENAME_TEMP_FILE_ERROR:Ljava/lang/String;

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_TYPE_STORAGE_SPACE_IS_FULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->TYPE_STORAGE_SPACE_IS_FULL:Ljava/lang/String;

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_TYPE_SAVE_FILE_NOT_EXIST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->TYPE_SAVE_FILE_NOT_EXIST:Ljava/lang/String;

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_TYPE_FILE_NOT_DETECT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->TYPE_FILE_NOT_DETECT:Ljava/lang/String;

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_TYPE_DOWNLOAD_FILE_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->TYPE_DOWNLOAD_FILE_ERROR:Ljava/lang/String;

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_TYPE_URL_FILE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->TYPE_URL_FILE_CHANGED:Ljava/lang/String;

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_TYPE_FILE_IS_DOWNLOADING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->TYPE_FILE_IS_DOWNLOADING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "detailMessage"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 337
    invoke-direct {p0, p1, p2, p3}, Lorg/wlf/filedownloader/file_download/base/HttpFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 341
    invoke-direct {p0, p1, p2}, Lorg/wlf/filedownloader/file_download/base/HttpFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 342
    return-void
.end method


# virtual methods
.method protected onInitTypeWithFailReason(Lorg/wlf/filedownloader/base/FailReason;)V
    .locals 6
    .param p1, "failReason"    # Lorg/wlf/filedownloader/base/FailReason;

    .prologue
    .line 346
    invoke-super {p0, p1}, Lorg/wlf/filedownloader/file_download/base/HttpFailReason;->onInitTypeWithFailReason(Lorg/wlf/filedownloader/base/FailReason;)V

    .line 348
    if-nez p1, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    instance-of v5, p1, Lorg/wlf/filedownloader/file_download/base/HttpFailReason;

    if-eqz v5, :cond_9

    move-object v3, p1

    .line 357
    check-cast v3, Lorg/wlf/filedownloader/file_download/base/HttpFailReason;

    .line 358
    .local v3, "httpFailReason":Lorg/wlf/filedownloader/file_download/base/HttpFailReason;
    invoke-virtual {v3}, Lorg/wlf/filedownloader/file_download/base/HttpFailReason;->getType()Ljava/lang/String;

    move-result-object v4

    .line 359
    .local v4, "type":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->setType(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->isTypeInit()Z

    move-result v5

    if-nez v5, :cond_0

    .line 367
    instance-of v5, p1, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;

    if-eqz v5, :cond_5

    move-object v2, p1

    .line 369
    check-cast v2, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;

    .line 370
    .local v2, "httpDownloadException":Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;
    invoke-virtual {v2}, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;->getType()Ljava/lang/String;

    move-result-object v4

    .line 372
    sget-object v5, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;->TYPE_CONTENT_RANGE_VALIDATE_FAIL:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 374
    sget-object v5, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;->TYPE_ETAG_CHANGED:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 375
    sget-object v5, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->TYPE_URL_FILE_CHANGED:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->setType(Ljava/lang/String;)V

    goto :goto_0

    .line 376
    :cond_2
    sget-object v5, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;->TYPE_REDIRECT_COUNT_OVER_LIMITS:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 377
    sget-object v5, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->TYPE_URL_OVER_REDIRECT_COUNT:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->setType(Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_3
    sget-object v5, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;->TYPE_RESOURCES_SIZE_ILLEGAL:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 379
    sget-object v5, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->TYPE_DOWNLOAD_FILE_ERROR:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->setType(Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_4
    sget-object v5, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;->TYPE_RESPONSE_CODE_ERROR:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 381
    sget-object v5, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->TYPE_BAD_HTTP_RESPONSE_CODE:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->setType(Ljava/lang/String;)V

    goto :goto_0

    .line 385
    .end local v2    # "httpDownloadException":Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;
    :cond_5
    instance-of v5, p1, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;

    if-eqz v5, :cond_0

    move-object v0, p1

    .line 387
    check-cast v0, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;

    .line 388
    .local v0, "detectUrlFileFailReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    invoke-virtual {v0}, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;->getType()Ljava/lang/String;

    move-result-object v4

    .line 390
    sget-object v5, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;->TYPE_BAD_HTTP_RESPONSE_CODE:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 391
    sget-object v5, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->TYPE_BAD_HTTP_RESPONSE_CODE:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->setType(Ljava/lang/String;)V

    goto :goto_0

    .line 392
    :cond_6
    sget-object v5, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;->TYPE_HTTP_FILE_NOT_EXIST:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 393
    sget-object v5, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->TYPE_FILE_NOT_DETECT:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->setType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 394
    :cond_7
    sget-object v5, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;->TYPE_URL_ILLEGAL:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 395
    sget-object v5, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->TYPE_URL_ILLEGAL:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->setType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 396
    :cond_8
    sget-object v5, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;->TYPE_URL_OVER_REDIRECT_COUNT:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 397
    sget-object v5, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->TYPE_URL_OVER_REDIRECT_COUNT:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->setType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 403
    .end local v0    # "detectUrlFileFailReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    .end local v3    # "httpFailReason":Lorg/wlf/filedownloader/file_download/base/HttpFailReason;
    .end local v4    # "type":Ljava/lang/String;
    :cond_9
    instance-of v5, p1, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;

    if-eqz v5, :cond_0

    move-object v1, p1

    .line 405
    check-cast v1, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;

    .line 406
    .local v1, "fileSaveException":Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;
    invoke-virtual {v1}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;->getType()Ljava/lang/String;

    move-result-object v4

    .line 408
    .restart local v4    # "type":Ljava/lang/String;
    sget-object v5, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;->TYPE_FILE_CAN_NOT_STORAGE:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 409
    sget-object v5, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->TYPE_STORAGE_SPACE_CAN_NOT_WRITE:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->setType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 410
    :cond_a
    sget-object v5, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;->TYPE_RENAME_TEMP_FILE_ERROR:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 411
    sget-object v5, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->TYPE_RENAME_TEMP_FILE_ERROR:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->setType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 412
    :cond_b
    sget-object v5, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;->TYPE_SAVER_HAS_BEEN_STOPPED:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 414
    sget-object v5, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;->TYPE_TEMP_FILE_DOES_NOT_EXIST:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 415
    sget-object v5, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->TYPE_SAVE_FILE_NOT_EXIST:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->setType(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

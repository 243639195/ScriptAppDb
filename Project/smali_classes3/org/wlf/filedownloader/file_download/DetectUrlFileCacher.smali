.class Lorg/wlf/filedownloader/file_download/DetectUrlFileCacher;
.super Ljava/lang/Object;
.source "DetectUrlFileCacher.java"


# instance fields
.field private mDetectUrlFileInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mModifyLock:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileCacher;->mDetectUrlFileInfoMap:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileCacher;->mModifyLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addOrUpdateDetectUrlFile(Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;)Z
    .locals 5
    .param p1, "detectUrlFileInfo"    # Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    if-nez p1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v2

    .line 42
    :cond_1
    invoke-virtual {p1}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 48
    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileCacher;->mDetectUrlFileInfoMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;

    .line 49
    .local v1, "urlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    iget-object v4, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileCacher;->mModifyLock:Ljava/lang/Object;

    monitor-enter v4

    .line 50
    if-eqz v1, :cond_2

    .line 52
    :try_start_0
    invoke-virtual {v1, p1}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->update(Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;)V

    .line 53
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 56
    :cond_2
    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileCacher;->mDetectUrlFileInfoMap:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getDetectUrlFile(Ljava/lang/String;)Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileCacher;->mDetectUrlFileInfoMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;

    .line 82
    .local v4, "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    invoke-static {v4}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 83
    invoke-virtual {v4}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getCreateDatetime()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "createDatetime":Ljava/lang/String;
    invoke-virtual {v4}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getCreateDatetime()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 86
    invoke-static {v2}, Lorg/wlf/filedownloader/util/DateUtil;->string2Date_yyyy_MM_dd_HH_mm_ss(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 87
    .local v0, "createDate":Ljava/util/Date;
    if-eqz v0, :cond_0

    .line 88
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 89
    .local v1, "createDateCalendar":Ljava/util/GregorianCalendar;
    invoke-virtual {v1, v0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 91
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 92
    .local v3, "curDateCalendar":Ljava/util/GregorianCalendar;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v5}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 94
    const/4 v5, 0x6

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Ljava/util/GregorianCalendar;->add(II)V

    .line 95
    invoke-virtual {v3, v1}, Ljava/util/GregorianCalendar;->after(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 97
    invoke-virtual {v4}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/wlf/filedownloader/file_download/DetectUrlFileCacher;->removeDetectUrlFile(Ljava/lang/String;)V

    .line 98
    const/4 v4, 0x0

    .line 103
    .end local v0    # "createDate":Ljava/util/Date;
    .end local v1    # "createDateCalendar":Ljava/util/GregorianCalendar;
    .end local v2    # "createDatetime":Ljava/lang/String;
    .end local v3    # "curDateCalendar":Ljava/util/GregorianCalendar;
    :cond_0
    return-object v4
.end method

.method public release()V
    .locals 2

    .prologue
    .line 110
    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileCacher;->mModifyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 111
    :try_start_0
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileCacher;->mDetectUrlFileInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 112
    monitor-exit v1

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeDetectUrlFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileCacher;->mModifyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_0
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileCacher;->mDetectUrlFileInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    monitor-exit v1

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

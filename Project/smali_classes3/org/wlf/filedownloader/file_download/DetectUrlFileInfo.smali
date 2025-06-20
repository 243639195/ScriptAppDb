.class public Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
.super Lorg/wlf/filedownloader/base/BaseUrlFileInfo;
.source "DetectUrlFileInfo.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/wlf/filedownloader/base/BaseUrlFileInfo;-><init>()V

    .line 24
    return-void
.end method

.method constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fileSize"    # J
    .param p4, "eTag"    # Ljava/lang/String;
    .param p5, "lastModified"    # Ljava/lang/String;
    .param p6, "acceptRangeType"    # Ljava/lang/String;
    .param p7, "fileDir"    # Ljava/lang/String;
    .param p8, "fileName"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/wlf/filedownloader/base/BaseUrlFileInfo;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mUrl:Ljava/lang/String;

    .line 41
    iput-wide p2, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mFileSize:J

    .line 42
    iput-object p4, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mETag:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mLastModified:Ljava/lang/String;

    .line 44
    iput-object p6, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mAcceptRangeType:Ljava/lang/String;

    .line 45
    iput-object p7, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mFileDir:Ljava/lang/String;

    .line 46
    iput-object p8, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mFileName:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lorg/wlf/filedownloader/util/DateUtil;->date2String_yyyy_MM_dd_HH_mm_ss(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mCreateDatetime:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method setFileDir(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileDir"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mFileDir:Ljava/lang/String;

    .line 84
    return-void
.end method

.method setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mFileName:Ljava/lang/String;

    .line 88
    return-void
.end method

.method update(Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;)V
    .locals 4
    .param p1, "detectUrlFileInfo"    # Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;

    .prologue
    .line 56
    iget-object v0, p1, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p1, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mUrl:Ljava/lang/String;

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mUrl:Ljava/lang/String;

    .line 59
    :cond_0
    iget-wide v0, p1, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mFileSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p1, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mFileSize:J

    iget-wide v2, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mFileSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 60
    iget-wide v0, p1, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mFileSize:J

    iput-wide v0, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mFileSize:J

    .line 62
    :cond_1
    iget-object v0, p1, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mETag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 63
    iget-object v0, p1, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mETag:Ljava/lang/String;

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mETag:Ljava/lang/String;

    .line 65
    :cond_2
    iget-object v0, p1, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mLastModified:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 66
    iget-object v0, p1, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mLastModified:Ljava/lang/String;

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mLastModified:Ljava/lang/String;

    .line 68
    :cond_3
    iget-object v0, p1, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mAcceptRangeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 69
    iget-object v0, p1, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mAcceptRangeType:Ljava/lang/String;

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mAcceptRangeType:Ljava/lang/String;

    .line 71
    :cond_4
    iget-object v0, p1, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mFileDir:Ljava/lang/String;

    invoke-static {v0}, Lorg/wlf/filedownloader/util/FileUtil;->isFilePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 72
    iget-object v0, p1, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mFileDir:Ljava/lang/String;

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mFileDir:Ljava/lang/String;

    .line 74
    :cond_5
    iget-object v0, p1, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 75
    iget-object v0, p1, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mFileName:Ljava/lang/String;

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mFileName:Ljava/lang/String;

    .line 77
    :cond_6
    iget-object v0, p1, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mCreateDatetime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 78
    iget-object v0, p1, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mCreateDatetime:Ljava/lang/String;

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->mCreateDatetime:Ljava/lang/String;

    .line 80
    :cond_7
    return-void
.end method

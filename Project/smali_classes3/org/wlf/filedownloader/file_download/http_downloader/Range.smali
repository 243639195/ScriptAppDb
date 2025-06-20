.class public Lorg/wlf/filedownloader/file_download/http_downloader/Range;
.super Ljava/lang/Object;
.source "Range.java"


# instance fields
.field public final endPos:J

.field public final startPos:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "startPos"    # J
    .param p3, "endPos"    # J

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->startPos:J

    .line 19
    iput-wide p3, p0, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->endPos:J

    .line 20
    return-void
.end method

.method public static isLegal(Lorg/wlf/filedownloader/file_download/http_downloader/Range;)Z
    .locals 4
    .param p0, "range"    # Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    .prologue
    const-wide/16 v2, 0x0

    .line 33
    if-eqz p0, :cond_0

    iget-wide v0, p0, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->startPos:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->endPos:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->endPos:J

    iget-wide v2, p0, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->startPos:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 34
    const/4 v0, 0x1

    .line 36
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 41
    instance-of v1, p1, Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 42
    check-cast v0, Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    .line 43
    .local v0, "other":Lorg/wlf/filedownloader/file_download/http_downloader/Range;
    iget-wide v2, v0, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->startPos:J

    iget-wide v4, p0, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->startPos:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, v0, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->endPos:J

    iget-wide v4, p0, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->endPos:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 44
    const/4 v1, 0x1

    .line 47
    .end local v0    # "other":Lorg/wlf/filedownloader/file_download/http_downloader/Range;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLength()J
    .locals 4

    .prologue
    .line 23
    iget-wide v0, p0, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->endPos:J

    iget-wide v2, p0, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->startPos:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->startPos:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->endPos:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

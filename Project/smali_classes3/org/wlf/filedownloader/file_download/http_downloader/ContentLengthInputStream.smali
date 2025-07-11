.class public Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;
.super Ljava/io/InputStream;
.source "ContentLengthInputStream.java"


# instance fields
.field private final mLength:J

.field private final mStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "length"    # J

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;->mStream:Ljava/io/InputStream;

    .line 21
    iput-wide p2, p0, Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;->mLength:J

    .line 22
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;->mLength:J

    long-to-int v0, v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 36
    return-void
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;->mLength:J

    return-wide v0
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readLimit"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 41
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 61
    return-void
.end method

.method public skip(J)J
    .locals 3
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method

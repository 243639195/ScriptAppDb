.class Lnet/lingala/zip4j/io/outputstream/ZipStandardCipherOutputStream;
.super Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;
.source "ZipStandardCipherOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/io/outputstream/CipherOutputStream",
        "<",
        "Lnet/lingala/zip4j/crypto/StandardEncrypter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;Lnet/lingala/zip4j/model/ZipParameters;[C)V
    .locals 0
    .param p1, "outputStream"    # Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;
    .param p2, "zipParameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .param p3, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;-><init>(Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;Lnet/lingala/zip4j/model/ZipParameters;[C)V

    .line 15
    return-void
.end method

.method private getEncryptionKey(Lnet/lingala/zip4j/model/ZipParameters;)J
    .locals 5
    .param p1, "zipParameters"    # Lnet/lingala/zip4j/model/ZipParameters;

    .prologue
    .line 42
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isWriteExtendedLocalFileHeader()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getLastModifiedFileTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->epochToExtendedDosTime(J)J

    move-result-wide v0

    .line 44
    .local v0, "dosTime":J
    const-wide/32 v2, 0xffff

    and-long/2addr v2, v0

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    .line 47
    .end local v0    # "dosTime":J
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getEntryCRC()J

    move-result-wide v2

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic initializeEncrypter(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipParameters;[C)Lnet/lingala/zip4j/crypto/Encrypter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/outputstream/ZipStandardCipherOutputStream;->initializeEncrypter(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipParameters;[C)Lnet/lingala/zip4j/crypto/StandardEncrypter;

    move-result-object v0

    return-object v0
.end method

.method protected initializeEncrypter(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipParameters;[C)Lnet/lingala/zip4j/crypto/StandardEncrypter;
    .locals 4
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "zipParameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .param p3, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/io/outputstream/ZipStandardCipherOutputStream;->getEncryptionKey(Lnet/lingala/zip4j/model/ZipParameters;)J

    move-result-wide v2

    .line 21
    .local v2, "key":J
    new-instance v0, Lnet/lingala/zip4j/crypto/StandardEncrypter;

    invoke-direct {v0, p3, v2, v3}, Lnet/lingala/zip4j/crypto/StandardEncrypter;-><init>([CJ)V

    .line 22
    .local v0, "encrypter":Lnet/lingala/zip4j/crypto/StandardEncrypter;
    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/StandardEncrypter;->getHeaderBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/lingala/zip4j/io/outputstream/ZipStandardCipherOutputStream;->writeHeaders([B)V

    .line 23
    return-object v0
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/outputstream/ZipStandardCipherOutputStream;->write([B)V

    .line 29
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/outputstream/ZipStandardCipherOutputStream;->write([BII)V

    .line 34
    return-void
.end method

.method public write([BII)V
    .locals 0
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-super {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;->write([BII)V

    .line 39
    return-void
.end method

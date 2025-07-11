.class Lnet/lingala/zip4j/io/inputstream/ZipStandardCipherInputStream;
.super Lnet/lingala/zip4j/io/inputstream/CipherInputStream;
.source "ZipStandardCipherInputStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/io/inputstream/CipherInputStream",
        "<",
        "Lnet/lingala/zip4j/crypto/StandardDecrypter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;Lnet/lingala/zip4j/model/LocalFileHeader;[CI)V
    .locals 0
    .param p1, "zipEntryInputStream"    # Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;
    .param p2, "localFileHeader"    # Lnet/lingala/zip4j/model/LocalFileHeader;
    .param p3, "password"    # [C
    .param p4, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;-><init>(Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;Lnet/lingala/zip4j/model/LocalFileHeader;[CI)V

    .line 15
    return-void
.end method

.method private getStandardDecrypterHeaderBytes()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    const/16 v1, 0xc

    new-array v0, v1, [B

    .line 25
    .local v0, "headerBytes":[B
    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/inputstream/ZipStandardCipherInputStream;->readRaw([B)I

    .line 26
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic initializeDecrypter(Lnet/lingala/zip4j/model/LocalFileHeader;[C)Lnet/lingala/zip4j/crypto/Decrypter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0, p1, p2}, Lnet/lingala/zip4j/io/inputstream/ZipStandardCipherInputStream;->initializeDecrypter(Lnet/lingala/zip4j/model/LocalFileHeader;[C)Lnet/lingala/zip4j/crypto/StandardDecrypter;

    move-result-object v0

    return-object v0
.end method

.method protected initializeDecrypter(Lnet/lingala/zip4j/model/LocalFileHeader;[C)Lnet/lingala/zip4j/crypto/StandardDecrypter;
    .locals 7
    .param p1, "localFileHeader"    # Lnet/lingala/zip4j/model/LocalFileHeader;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    new-instance v0, Lnet/lingala/zip4j/crypto/StandardDecrypter;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCrc()J

    move-result-wide v2

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getLastModifiedTime()J

    move-result-wide v4

    .line 20
    invoke-direct {p0}, Lnet/lingala/zip4j/io/inputstream/ZipStandardCipherInputStream;->getStandardDecrypterHeaderBytes()[B

    move-result-object v6

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lnet/lingala/zip4j/crypto/StandardDecrypter;-><init>([CJJ[B)V

    .line 19
    return-object v0
.end method

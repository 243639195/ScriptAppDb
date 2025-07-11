.class abstract Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;
.super Ljava/io/OutputStream;
.source "CipherOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/lingala/zip4j/crypto/Encrypter;",
        ">",
        "Ljava/io/OutputStream;"
    }
.end annotation


# instance fields
.field private encrypter:Lnet/lingala/zip4j/crypto/Encrypter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private zipEntryOutputStream:Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;Lnet/lingala/zip4j/model/ZipParameters;[C)V
    .locals 1
    .param p1, "zipEntryOutputStream"    # Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;
    .param p2, "zipParameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .param p3, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;, "Lnet/lingala/zip4j/io/outputstream/CipherOutputStream<TT;>;"
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 33
    iput-object p1, p0, Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;->zipEntryOutputStream:Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;->initializeEncrypter(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipParameters;[C)Lnet/lingala/zip4j/crypto/Encrypter;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;->encrypter:Lnet/lingala/zip4j/crypto/Encrypter;

    .line 35
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;, "Lnet/lingala/zip4j/io/outputstream/CipherOutputStream<TT;>;"
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;->zipEntryOutputStream:Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;->close()V

    .line 64
    return-void
.end method

.method public closeEntry()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;, "Lnet/lingala/zip4j/io/outputstream/CipherOutputStream<TT;>;"
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;->zipEntryOutputStream:Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;->closeEntry()V

    .line 59
    return-void
.end method

.method protected getEncrypter()Lnet/lingala/zip4j/crypto/Encrypter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;, "Lnet/lingala/zip4j/io/outputstream/CipherOutputStream<TT;>;"
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;->encrypter:Lnet/lingala/zip4j/crypto/Encrypter;

    return-object v0
.end method

.method public getNumberOfBytesWrittenForThisEntry()J
    .locals 2

    .prologue
    .line 67
    .local p0, "this":Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;, "Lnet/lingala/zip4j/io/outputstream/CipherOutputStream<TT;>;"
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;->zipEntryOutputStream:Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;->getNumberOfBytesWrittenForThisEntry()J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract initializeEncrypter(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipParameters;[C)Lnet/lingala/zip4j/crypto/Encrypter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Lnet/lingala/zip4j/model/ZipParameters;",
            "[C)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;, "Lnet/lingala/zip4j/io/outputstream/CipherOutputStream<TT;>;"
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;->zipEntryOutputStream:Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;->write(I)V

    .line 40
    return-void
.end method

.method public write([B)V
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;, "Lnet/lingala/zip4j/io/outputstream/CipherOutputStream<TT;>;"
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;->zipEntryOutputStream:Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;->write([B)V

    .line 45
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;, "Lnet/lingala/zip4j/io/outputstream/CipherOutputStream<TT;>;"
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;->encrypter:Lnet/lingala/zip4j/crypto/Encrypter;

    invoke-interface {v0, p1, p2, p3}, Lnet/lingala/zip4j/crypto/Encrypter;->encryptData([BII)I

    .line 50
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;->zipEntryOutputStream:Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;->write([BII)V

    .line 51
    return-void
.end method

.method public writeHeaders([B)V
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;, "Lnet/lingala/zip4j/io/outputstream/CipherOutputStream<TT;>;"
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;->zipEntryOutputStream:Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;->write([B)V

    .line 55
    return-void
.end method

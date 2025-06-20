.class public Lnet/lingala/zip4j/crypto/StandardDecrypter;
.super Ljava/lang/Object;
.source "StandardDecrypter.java"

# interfaces
.implements Lnet/lingala/zip4j/crypto/Decrypter;


# instance fields
.field private zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;


# direct methods
.method public constructor <init>([CJJ[B)V
    .locals 8
    .param p1, "password"    # [C
    .param p2, "crc"    # J
    .param p4, "lastModifiedFileTime"    # J
    .param p6, "headerBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    invoke-direct {v0}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    move-object v1, p0

    move-object v2, p6

    move-object v3, p1

    move-wide v4, p4

    move-wide v6, p2

    .line 31
    invoke-direct/range {v1 .. v7}, Lnet/lingala/zip4j/crypto/StandardDecrypter;->init([B[CJJ)V

    .line 32
    return-void
.end method

.method private init([B[CJJ)V
    .locals 7
    .param p1, "headerBytes"    # [B
    .param p2, "password"    # [C
    .param p3, "lastModifiedFileTime"    # J
    .param p5, "crc"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xc

    .line 50
    if-eqz p2, :cond_0

    array-length v3, p2

    if-gtz v3, :cond_1

    .line 51
    :cond_0
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    const-string v4, "Wrong password!"

    sget-object v5, Lnet/lingala/zip4j/exception/ZipException$Type;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$Type;

    invoke-direct {v3, v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    throw v3

    .line 54
    :cond_1
    iget-object v3, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    invoke-virtual {v3, p2}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->initKeys([C)V

    .line 56
    const/4 v3, 0x0

    aget-byte v1, p1, v3

    .line 57
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_4

    .line 58
    add-int/lit8 v3, v0, 0x1

    if-ne v3, v6, :cond_2

    .line 59
    iget-object v3, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    invoke-virtual {v3}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->decryptByte()B

    move-result v3

    xor-int/2addr v3, v1

    int-to-byte v2, v3

    .line 60
    .local v2, "verificationByte":B
    const/16 v3, 0x18

    shr-long v4, p5, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    if-eq v2, v3, :cond_2

    const/16 v3, 0x8

    shr-long v4, p3, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    if-eq v2, v3, :cond_2

    .line 61
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    const-string v4, "Wrong password!"

    sget-object v5, Lnet/lingala/zip4j/exception/ZipException$Type;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$Type;

    invoke-direct {v3, v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    throw v3

    .line 65
    .end local v2    # "verificationByte":B
    :cond_2
    iget-object v3, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    iget-object v4, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    invoke-virtual {v4}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->decryptByte()B

    move-result v4

    xor-int/2addr v4, v1

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->updateKeys(B)V

    .line 67
    add-int/lit8 v3, v0, 0x1

    if-eq v3, v6, :cond_3

    .line 68
    add-int/lit8 v3, v0, 0x1

    aget-byte v1, p1, v3

    .line 57
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_4
    return-void
.end method


# virtual methods
.method public decryptData([BII)I
    .locals 4
    .param p1, "buff"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 35
    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 36
    :cond_0
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "one of the input parameters were null in standard decrypt data"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 39
    :cond_1
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v2, p2, p3

    if-ge v0, v2, :cond_2

    .line 40
    aget-byte v2, p1, v0

    and-int/lit16 v1, v2, 0xff

    .line 41
    .local v1, "val":I
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    invoke-virtual {v2}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->decryptByte()B

    move-result v2

    xor-int/2addr v2, v1

    and-int/lit16 v1, v2, 0xff

    .line 42
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    int-to-byte v3, v1

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->updateKeys(B)V

    .line 43
    int-to-byte v2, v1

    aput-byte v2, p1, v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    .end local v1    # "val":I
    :cond_2
    return p3
.end method

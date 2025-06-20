.class public Lnet/lingala/zip4j/crypto/AesCipherUtil;
.super Ljava/lang/Object;
.source "AesCipherUtil.java"


# static fields
.field private static final START_INDEX:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static derivePasswordBasedKey([B[CLnet/lingala/zip4j/model/enums/AesKeyStrength;)[B
    .locals 11
    .param p0, "salt"    # [B
    .param p1, "password"    # [C
    .param p2, "aesKeyStrength"    # Lnet/lingala/zip4j/model/enums/AesKeyStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v6, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    const-string v7, "HmacSHA1"

    const-string v8, "ISO-8859-1"

    const/16 v9, 0x3e8

    invoke-direct {v6, v7, v8, p0, v9}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;[BI)V

    .line 29
    .local v6, "parameters":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
    new-instance v2, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;

    invoke-direct {v2, v6}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;-><init>(Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;)V

    .line 31
    .local v2, "engine":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getKeyLength()I

    move-result v3

    .line 32
    .local v3, "keyLength":I
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getMacLength()I

    move-result v4

    .line 33
    .local v4, "macLength":I
    add-int v7, v3, v4

    add-int/lit8 v1, v7, 0x2

    .line 34
    .local v1, "derivedKeyLength":I
    invoke-virtual {v2, p1, v1}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->deriveKey([CI)[B

    move-result-object v0

    .line 35
    .local v0, "derivedKey":[B
    if-eqz v0, :cond_0

    array-length v7, v0

    if-ne v7, v1, :cond_0

    .line 36
    return-object v0

    .line 38
    :cond_0
    const-string v7, "Derived Key invalid for Key Length [%d] MAC Length [%d]"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 39
    .local v5, "message":Ljava/lang/String;
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v7, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static derivePasswordVerifier([BLnet/lingala/zip4j/model/enums/AesKeyStrength;)[B
    .locals 5
    .param p0, "derivedKey"    # [B
    .param p1, "aesKeyStrength"    # Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .prologue
    const/4 v4, 0x2

    .line 51
    new-array v0, v4, [B

    .line 52
    .local v0, "derivedPasswordVerifier":[B
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getKeyLength()I

    move-result v2

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getMacLength()I

    move-result v3

    add-int v1, v2, v3

    .line 53
    .local v1, "keyMacLength":I
    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    return-object v0
.end method

.method public static getAESEngine([BLnet/lingala/zip4j/model/enums/AesKeyStrength;)Lnet/lingala/zip4j/crypto/engine/AESEngine;
    .locals 3
    .param p0, "derivedKey"    # [B
    .param p1, "aesKeyStrength"    # Lnet/lingala/zip4j/model/enums/AesKeyStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getKeyLength()I

    move-result v1

    .line 83
    .local v1, "keyLength":I
    new-array v0, v1, [B

    .line 84
    .local v0, "aesKey":[B
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    new-instance v2, Lnet/lingala/zip4j/crypto/engine/AESEngine;

    invoke-direct {v2, v0}, Lnet/lingala/zip4j/crypto/engine/AESEngine;-><init>([B)V

    return-object v2
.end method

.method public static getMacBasedPRF([BLnet/lingala/zip4j/model/enums/AesKeyStrength;)Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;
    .locals 5
    .param p0, "derivedKey"    # [B
    .param p1, "aesKeyStrength"    # Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .prologue
    .line 65
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getMacLength()I

    move-result v2

    .line 66
    .local v2, "macLength":I
    new-array v1, v2, [B

    .line 67
    .local v1, "macKey":[B
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getKeyLength()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {p0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    new-instance v0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    const-string v3, "HmacSHA1"

    invoke-direct {v0, v3}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "macBasedPRF":Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->init([B)V

    .line 70
    return-object v0
.end method

.method public static prepareBuffAESIVBytes([BI)V
    .locals 4
    .param p0, "buff"    # [B
    .param p1, "nonce"    # I

    .prologue
    const/4 v3, 0x0

    .line 89
    int-to-byte v1, p1

    aput-byte v1, p0, v3

    .line 90
    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 91
    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 92
    const/4 v1, 0x3

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 94
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    .line 95
    aput-byte v3, p0, v0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

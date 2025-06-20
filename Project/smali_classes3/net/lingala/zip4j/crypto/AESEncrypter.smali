.class public Lnet/lingala/zip4j/crypto/AESEncrypter;
.super Ljava/lang/Object;
.source "AESEncrypter.java"

# interfaces
.implements Lnet/lingala/zip4j/crypto/Encrypter;


# instance fields
.field private aesEngine:Lnet/lingala/zip4j/crypto/engine/AESEngine;

.field private final counterBlock:[B

.field private derivedPasswordVerifier:[B

.field private finished:Z

.field private final iv:[B

.field private loopCount:I

.field private mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

.field private nonce:I

.field private final random:Ljava/security/SecureRandom;

.field private saltBytes:[B


# direct methods
.method public constructor <init>([CLnet/lingala/zip4j/model/enums/AesKeyStrength;)V
    .locals 3
    .param p1, "password"    # [C
    .param p2, "aesKeyStrength"    # Lnet/lingala/zip4j/model/enums/AesKeyStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->random:Ljava/security/SecureRandom;

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->nonce:I

    .line 45
    iput v1, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->loopCount:I

    .line 53
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 54
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "input password is empty or null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    sget-object v0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_128:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    if-eq p2, v0, :cond_2

    sget-object v0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_256:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    if-eq p2, v0, :cond_2

    .line 58
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Invalid AES key strength"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_2
    iput-boolean v1, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->finished:Z

    .line 62
    new-array v0, v2, [B

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->counterBlock:[B

    .line 63
    new-array v0, v2, [B

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->iv:[B

    .line 64
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/crypto/AESEncrypter;->init([CLnet/lingala/zip4j/model/enums/AesKeyStrength;)V

    .line 65
    return-void
.end method

.method private generateSalt(I)[B
    .locals 6
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    .line 115
    if-eq p1, v5, :cond_0

    const/16 v4, 0x10

    if-eq p1, v4, :cond_0

    .line 116
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    const-string v5, "invalid salt size, cannot generate salt"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 121
    :cond_0
    if-ne p1, v5, :cond_1

    .line 122
    const/4 v2, 0x2

    .line 127
    .local v2, "rounds":I
    :goto_0
    new-array v3, p1, [B

    .line 128
    .local v3, "salt":[B
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 129
    iget-object v4, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    .line 130
    .local v0, "i":I
    mul-int/lit8 v4, v1, 0x4

    shr-int/lit8 v5, v0, 0x18

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 131
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x1

    shr-int/lit8 v5, v0, 0x10

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 132
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x2

    shr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 133
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x3

    int-to-byte v5, v0

    aput-byte v5, v3, v4

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 124
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "rounds":I
    .end local v3    # "salt":[B
    :cond_1
    const/4 v2, 0x4

    .restart local v2    # "rounds":I
    goto :goto_0

    .line 135
    .restart local v1    # "j":I
    .restart local v3    # "salt":[B
    :cond_2
    return-object v3
.end method

.method private init([CLnet/lingala/zip4j/model/enums/AesKeyStrength;)V
    .locals 2
    .param p1, "password"    # [C
    .param p2, "aesKeyStrength"    # Lnet/lingala/zip4j/model/enums/AesKeyStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getSaltLength()I

    move-result v1

    invoke-direct {p0, v1}, Lnet/lingala/zip4j/crypto/AESEncrypter;->generateSalt(I)[B

    move-result-object v1

    iput-object v1, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->saltBytes:[B

    .line 69
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->saltBytes:[B

    invoke-static {v1, p1, p2}, Lnet/lingala/zip4j/crypto/AesCipherUtil;->derivePasswordBasedKey([B[CLnet/lingala/zip4j/model/enums/AesKeyStrength;)[B

    move-result-object v0

    .line 70
    .local v0, "derivedKey":[B
    invoke-static {v0, p2}, Lnet/lingala/zip4j/crypto/AesCipherUtil;->derivePasswordVerifier([BLnet/lingala/zip4j/model/enums/AesKeyStrength;)[B

    move-result-object v1

    iput-object v1, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->derivedPasswordVerifier:[B

    .line 71
    invoke-static {v0, p2}, Lnet/lingala/zip4j/crypto/AesCipherUtil;->getAESEngine([BLnet/lingala/zip4j/model/enums/AesKeyStrength;)Lnet/lingala/zip4j/crypto/engine/AESEngine;

    move-result-object v1

    iput-object v1, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->aesEngine:Lnet/lingala/zip4j/crypto/engine/AESEngine;

    .line 72
    invoke-static {v0, p2}, Lnet/lingala/zip4j/crypto/AesCipherUtil;->getMacBasedPRF([BLnet/lingala/zip4j/model/enums/AesKeyStrength;)Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    move-result-object v1

    iput-object v1, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    .line 73
    return-void
.end method


# virtual methods
.method public encryptData([B)I
    .locals 2
    .param p1, "buff"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 77
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "input bytes are null, cannot perform AES encryption"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/crypto/AESEncrypter;->encryptData([BII)I

    move-result v0

    return v0
.end method

.method public encryptData([BII)I
    .locals 5
    .param p1, "buff"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 84
    iget-boolean v2, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->finished:Z

    if-eqz v2, :cond_0

    .line 88
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "AES Encrypter is in finished state (A non 16 byte block has already been passed to encrypter)"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_0
    rem-int/lit8 v2, p3, 0x10

    if-eqz v2, :cond_1

    .line 92
    const/4 v2, 0x1

    iput-boolean v2, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->finished:Z

    .line 95
    :cond_1
    move v0, p2

    .local v0, "j":I
    :goto_0
    add-int v2, p2, p3

    if-ge v0, v2, :cond_4

    .line 96
    add-int/lit8 v2, v0, 0x10

    add-int v3, p2, p3

    if-gt v2, v3, :cond_2

    const/16 v2, 0x10

    :goto_1
    iput v2, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->loopCount:I

    .line 99
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->iv:[B

    iget v3, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->nonce:I

    invoke-static {v2, v3}, Lnet/lingala/zip4j/crypto/AesCipherUtil;->prepareBuffAESIVBytes([BI)V

    .line 100
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->aesEngine:Lnet/lingala/zip4j/crypto/engine/AESEngine;

    iget-object v3, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->iv:[B

    iget-object v4, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->counterBlock:[B

    invoke-virtual {v2, v3, v4}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->processBlock([B[B)I

    .line 102
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_2
    iget v2, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->loopCount:I

    if-ge v1, v2, :cond_3

    .line 103
    add-int v2, v0, v1

    add-int v3, v0, v1

    aget-byte v3, p1, v3

    iget-object v4, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->counterBlock:[B

    aget-byte v4, v4, v1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 96
    .end local v1    # "k":I
    :cond_2
    add-int v2, p2, p3

    sub-int/2addr v2, v0

    goto :goto_1

    .line 106
    .restart local v1    # "k":I
    :cond_3
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    iget v3, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->loopCount:I

    invoke-virtual {v2, p1, v0, v3}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->update([BII)V

    .line 107
    iget v2, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->nonce:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->nonce:I

    .line 95
    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 110
    .end local v1    # "k":I
    :cond_4
    return p3
.end method

.method public getDerivedPasswordVerifier()[B
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->derivedPasswordVerifier:[B

    return-object v0
.end method

.method public getFinalMac()[B
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 139
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    invoke-virtual {v2}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->doFinal()[B

    move-result-object v1

    .line 140
    .local v1, "rawMacBytes":[B
    new-array v0, v4, [B

    .line 141
    .local v0, "macBytes":[B
    invoke-static {v1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    return-object v0
.end method

.method public getSaltBytes()[B
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->saltBytes:[B

    return-object v0
.end method

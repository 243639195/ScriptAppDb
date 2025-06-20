.class public Lnet/lingala/zip4j/crypto/AESDecrypter;
.super Ljava/lang/Object;
.source "AESDecrypter.java"

# interfaces
.implements Lnet/lingala/zip4j/crypto/Decrypter;


# instance fields
.field private aesEngine:Lnet/lingala/zip4j/crypto/engine/AESEngine;

.field private counterBlock:[B

.field private iv:[B

.field private mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

.field private nonce:I


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/AESExtraDataRecord;[C[B[B)V
    .locals 2
    .param p1, "aesExtraDataRecord"    # Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .param p2, "password"    # [C
    .param p3, "salt"    # [B
    .param p4, "passwordVerifier"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x10

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->nonce:I

    .line 43
    new-array v0, v1, [B

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->iv:[B

    .line 44
    new-array v0, v1, [B

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->counterBlock:[B

    .line 45
    invoke-direct {p0, p3, p4, p2, p1}, Lnet/lingala/zip4j/crypto/AESDecrypter;->init([B[B[CLnet/lingala/zip4j/model/AESExtraDataRecord;)V

    .line 46
    return-void
.end method

.method private init([B[B[CLnet/lingala/zip4j/model/AESExtraDataRecord;)V
    .locals 6
    .param p1, "salt"    # [B
    .param p2, "passwordVerifier"    # [B
    .param p3, "password"    # [C
    .param p4, "aesExtraDataRecord"    # Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 51
    if-eqz p3, :cond_0

    array-length v3, p3

    if-gtz v3, :cond_1

    .line 52
    :cond_0
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    const-string v4, "empty or null password provided for AES decryption"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 55
    :cond_1
    invoke-virtual {p4}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getAesKeyStrength()Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object v0

    .line 56
    .local v0, "aesKeyStrength":Lnet/lingala/zip4j/model/enums/AesKeyStrength;
    invoke-static {p1, p3, v0}, Lnet/lingala/zip4j/crypto/AesCipherUtil;->derivePasswordBasedKey([B[CLnet/lingala/zip4j/model/enums/AesKeyStrength;)[B

    move-result-object v1

    .line 57
    .local v1, "derivedKey":[B
    invoke-static {v1, v0}, Lnet/lingala/zip4j/crypto/AesCipherUtil;->derivePasswordVerifier([BLnet/lingala/zip4j/model/enums/AesKeyStrength;)[B

    move-result-object v2

    .line 58
    .local v2, "derivedPasswordVerifier":[B
    invoke-static {p2, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_2

    .line 59
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    const-string v4, "Wrong Password"

    sget-object v5, Lnet/lingala/zip4j/exception/ZipException$Type;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$Type;

    invoke-direct {v3, v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    throw v3

    .line 62
    :cond_2
    invoke-static {v1, v0}, Lnet/lingala/zip4j/crypto/AesCipherUtil;->getAESEngine([BLnet/lingala/zip4j/model/enums/AesKeyStrength;)Lnet/lingala/zip4j/crypto/engine/AESEngine;

    move-result-object v3

    iput-object v3, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->aesEngine:Lnet/lingala/zip4j/crypto/engine/AESEngine;

    .line 63
    invoke-static {v1, v0}, Lnet/lingala/zip4j/crypto/AesCipherUtil;->getMacBasedPRF([BLnet/lingala/zip4j/model/enums/AesKeyStrength;)Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    move-result-object v3

    iput-object v3, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    .line 64
    return-void
.end method


# virtual methods
.method public decryptData([BII)I
    .locals 6
    .param p1, "buff"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 69
    move v0, p2

    .local v0, "j":I
    :goto_0
    add-int v3, p2, p3

    if-ge v0, v3, :cond_2

    .line 70
    add-int/lit8 v3, v0, 0x10

    add-int v4, p2, p3

    if-gt v3, v4, :cond_0

    const/16 v2, 0x10

    .line 73
    .local v2, "loopCount":I
    :goto_1
    iget-object v3, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    invoke-virtual {v3, p1, v0, v2}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->update([BII)V

    .line 74
    iget-object v3, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->iv:[B

    iget v4, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->nonce:I

    invoke-static {v3, v4}, Lnet/lingala/zip4j/crypto/AesCipherUtil;->prepareBuffAESIVBytes([BI)V

    .line 75
    iget-object v3, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->aesEngine:Lnet/lingala/zip4j/crypto/engine/AESEngine;

    iget-object v4, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->iv:[B

    iget-object v5, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->counterBlock:[B

    invoke-virtual {v3, v4, v5}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->processBlock([B[B)I

    .line 77
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_2
    if-ge v1, v2, :cond_1

    .line 78
    add-int v3, v0, v1

    add-int v4, v0, v1

    aget-byte v4, p1, v4

    iget-object v5, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->counterBlock:[B

    aget-byte v5, v5, v1

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 70
    .end local v1    # "k":I
    .end local v2    # "loopCount":I
    :cond_0
    add-int v3, p2, p3

    sub-int v2, v3, v0

    goto :goto_1

    .line 81
    .restart local v1    # "k":I
    .restart local v2    # "loopCount":I
    :cond_1
    iget v3, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->nonce:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->nonce:I

    .line 69
    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 84
    .end local v1    # "k":I
    .end local v2    # "loopCount":I
    :cond_2
    return p3
.end method

.method public getCalculatedAuthenticationBytes()[B
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

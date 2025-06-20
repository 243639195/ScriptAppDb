.class public Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;
.super Ljava/lang/Object;
.source "BinaryUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateBase64Md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateMd5(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->toBase64String([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static calculateBase64Md5([B)Ljava/lang/String;
    .locals 0

    .line 88
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateMd5([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->toBase64String([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static calculateMd5(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    const-string v0, "MD5"

    .line 55
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const/16 v1, 0x2000

    .line 56
    new-array v1, v1, [B

    .line 57
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 59
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result p0

    const/4 v3, -0x1

    if-eq p0, v3, :cond_0

    const/4 v3, 0x0

    .line 60
    invoke-virtual {v0, v1, v3, p0}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 63
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 65
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "MD5 algorithm not found."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static calculateMd5([B)[B
    .locals 1

    :try_start_0
    const-string v0, "MD5"

    .line 40
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 45
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0

    .line 42
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "MD5 algorithm not found."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static calculateMd5Str(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateMd5(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->getMd5StrFromBytes([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static calculateMd5Str([B)Ljava/lang/String;
    .locals 0

    .line 74
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateMd5([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->getMd5StrFromBytes([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fromBase64String(Ljava/lang/String;)[B
    .locals 0

    .line 31
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static getMd5StrFromBytes([B)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 106
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    const-string v3, "%02x"

    const/4 v4, 0x1

    .line 107
    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p0, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toBase64String([B)Ljava/lang/String;
    .locals 1

    .line 24
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

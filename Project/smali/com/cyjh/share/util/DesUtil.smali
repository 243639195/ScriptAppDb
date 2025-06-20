.class public Lcom/cyjh/share/util/DesUtil;
.super Ljava/lang/Object;
.source "DesUtil.java"


# static fields
.field private static DESIV:[B

.field private static DESkey:[B

.field static iv:Ljava/security/spec/AlgorithmParameterSpec;

.field private static key:Ljava/security/Key;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    .line 17
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/cyjh/share/util/DesUtil;->DESkey:[B

    .line 18
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/cyjh/share/util/DesUtil;->DESIV:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0x18t
        0x2et
        0x6et
        0x26t
        0x66t
        0xct
        0x24t
    .end array-data

    :array_1
    .array-data 1
        0x20t
        0x2ft
        0xbt
        -0x80t
        0x1dt
        0x4dt
        0x69t
        0x15t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 117
    sget-object v0, Lcom/cyjh/share/util/DesUtil;->DESkey:[B

    sget-object v1, Lcom/cyjh/share/util/DesUtil;->DESIV:[B

    invoke-static {v0, v1}, Lcom/cyjh/share/util/DesUtil;->init([B[B)V

    const-string v0, "DES/ECB/NoPadding"

    .line 118
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 119
    sget-object v1, Lcom/cyjh/share/util/DesUtil;->key:Ljava/security/Key;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/4 v1, 0x1

    .line 120
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 121
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 122
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeToKey(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    sget-object v0, Lcom/cyjh/share/util/DesUtil;->DESIV:[B

    invoke-static {p1, v0}, Lcom/cyjh/share/util/DesUtil;->init([B[B)V

    const-string p1, "DES/ECB/NoPadding"

    .line 127
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 128
    sget-object v0, Lcom/cyjh/share/util/DesUtil;->key:Ljava/security/Key;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/4 v0, 0x1

    .line 129
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 130
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 131
    new-instance p1, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    sget-object v0, Lcom/cyjh/share/util/DesUtil;->DESkey:[B

    sget-object v1, Lcom/cyjh/share/util/DesUtil;->DESIV:[B

    invoke-static {v0, v1}, Lcom/cyjh/share/util/DesUtil;->init([B[B)V

    const-string v0, "DES/ECB/NoPadding"

    .line 35
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 36
    sget-object v1, Lcom/cyjh/share/util/DesUtil;->key:Ljava/security/Key;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string v1, "utf-8"

    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 39
    array-length v1, p0

    rem-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 41
    array-length v1, p0

    add-int/lit8 v1, v1, 0x8

    array-length v3, p0

    rem-int/lit8 v3, v3, 0x8

    sub-int/2addr v1, v3

    new-array v1, v1, [B

    .line 43
    array-length v3, p0

    invoke-static {p0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v1

    .line 46
    :cond_0
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 47
    invoke-static {p0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeToKey(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    sget-object v0, Lcom/cyjh/share/util/DesUtil;->DESIV:[B

    invoke-static {p1, v0}, Lcom/cyjh/share/util/DesUtil;->init([B[B)V

    const-string p1, "DES/ECB/NoPadding"

    .line 60
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 61
    sget-object v0, Lcom/cyjh/share/util/DesUtil;->key:Ljava/security/Key;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string v0, "utf-8"

    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 64
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 66
    array-length v0, p0

    add-int/lit8 v0, v0, 0x8

    array-length v1, p0

    rem-int/lit8 v1, v1, 0x8

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    .line 68
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 71
    :cond_0
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const/4 p1, 0x2

    .line 72
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeToKey1(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    sget-object v0, Lcom/cyjh/share/util/DesUtil;->DESIV:[B

    invoke-static {p1, v0}, Lcom/cyjh/share/util/DesUtil;->init([B[B)V

    const-string p1, "DES/ECB/NoPadding"

    .line 85
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 86
    sget-object v0, Lcom/cyjh/share/util/DesUtil;->key:Ljava/security/Key;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string v0, "utf-8"

    .line 87
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 89
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 91
    array-length v0, p0

    add-int/lit8 v0, v0, 0x8

    array-length v1, p0

    rem-int/lit8 v1, v1, 0x8

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    .line 93
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 96
    :cond_0
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const/4 p1, 0x2

    .line 97
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static init([B[B)V
    .locals 1

    .line 102
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v0, p0}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 103
    new-instance p0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p0, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object p0, Lcom/cyjh/share/util/DesUtil;->iv:Ljava/security/spec/AlgorithmParameterSpec;

    const-string p0, "DES"

    .line 104
    invoke-static {p0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p0

    .line 105
    invoke-virtual {p0, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    sput-object p0, Lcom/cyjh/share/util/DesUtil;->key:Ljava/security/Key;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 111
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 109
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 107
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

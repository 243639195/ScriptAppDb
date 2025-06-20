.class public Lcom/cyjh/share/Encrypt/DesUtil;
.super Ljava/lang/Object;
.source "DesUtil.java"


# static fields
.field private static iv:Ljava/security/spec/AlgorithmParameterSpec;

.field private static key:Ljava/security/Key;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;[B[B)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    sget-object v0, Lcom/cyjh/share/Encrypt/DesUtil;->key:Ljava/security/Key;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cyjh/share/Encrypt/DesUtil;->iv:Ljava/security/spec/AlgorithmParameterSpec;

    if-nez v0, :cond_1

    .line 82
    :cond_0
    invoke-static {p1, p2}, Lcom/cyjh/share/Encrypt/DesUtil;->init([B[B)V

    :cond_1
    const-string p1, "DES/CBC/PKCS5Padding"

    .line 84
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 p2, 0x2

    .line 85
    sget-object v0, Lcom/cyjh/share/Encrypt/DesUtil;->key:Ljava/security/Key;

    sget-object v1, Lcom/cyjh/share/Encrypt/DesUtil;->iv:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p1, p2, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 p2, 0x0

    .line 86
    invoke-static {p0, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 87
    new-instance p1, Ljava/lang/String;

    const-string p2, "UTF-8"

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p1
.end method

.method public static encode(Ljava/lang/String;[B[B)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    sget-object v0, Lcom/cyjh/share/Encrypt/DesUtil;->key:Ljava/security/Key;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cyjh/share/Encrypt/DesUtil;->iv:Ljava/security/spec/AlgorithmParameterSpec;

    if-nez v0, :cond_1

    .line 42
    :cond_0
    invoke-static {p1, p2}, Lcom/cyjh/share/Encrypt/DesUtil;->init([B[B)V

    :cond_1
    const-string p1, "DES/CBC/PKCS5Padding"

    .line 45
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 p2, 0x1

    .line 47
    sget-object v0, Lcom/cyjh/share/Encrypt/DesUtil;->key:Ljava/security/Key;

    sget-object v1, Lcom/cyjh/share/Encrypt/DesUtil;->iv:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p1, p2, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const-string p2, "utf-8"

    .line 48
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const/4 p1, 0x2

    .line 49
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static init([B[B)V
    .locals 1

    .line 56
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v0, p0}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 58
    new-instance p0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p0, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object p0, Lcom/cyjh/share/Encrypt/DesUtil;->iv:Ljava/security/spec/AlgorithmParameterSpec;

    const-string p0, "DES"

    .line 60
    invoke-static {p0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p0

    .line 62
    invoke-virtual {p0, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    sput-object p0, Lcom/cyjh/share/Encrypt/DesUtil;->key:Ljava/security/Key;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 68
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 66
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 64
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

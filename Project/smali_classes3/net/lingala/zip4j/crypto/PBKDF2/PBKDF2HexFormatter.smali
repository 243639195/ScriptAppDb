.class Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2HexFormatter;
.super Ljava/lang/Object;
.source "PBKDF2HexFormatter.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromString(Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;Ljava/lang/String;)Z
    .locals 8
    .param p1, "p"    # Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 27
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v4

    .line 31
    :cond_1
    const-string v6, ":"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, "pSplit":[Ljava/lang/String;
    array-length v6, v2

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 36
    aget-object v6, v2, v5

    invoke-static {v6}, Lnet/lingala/zip4j/crypto/PBKDF2/BinTools;->hex2bin(Ljava/lang/String;)[B

    move-result-object v3

    .line 37
    .local v3, "salt":[B
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 38
    .local v1, "iterationCount":I
    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-static {v4}, Lnet/lingala/zip4j/crypto/PBKDF2/BinTools;->hex2bin(Ljava/lang/String;)[B

    move-result-object v0

    .line 40
    .local v0, "bDK":[B
    invoke-virtual {p1, v3}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->setSalt([B)V

    .line 41
    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->setIterationCount(I)V

    .line 42
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->setDerivedKey([B)V

    move v4, v5

    .line 43
    goto :goto_0
.end method

.method public toString(Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;)Ljava/lang/String;
    .locals 3
    .param p1, "p"    # Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    .prologue
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->getSalt()[B

    move-result-object v2

    invoke-static {v2}, Lnet/lingala/zip4j/crypto/PBKDF2/BinTools;->bin2hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->getIterationCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 48
    invoke-virtual {p1}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->getDerivedKey()[B

    move-result-object v2

    invoke-static {v2}, Lnet/lingala/zip4j/crypto/PBKDF2/BinTools;->bin2hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "s":Ljava/lang/String;
    return-object v0
.end method

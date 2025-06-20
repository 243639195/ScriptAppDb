.class public Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
.super Ljava/lang/Object;
.source "PBKDF2Engine.java"


# instance fields
.field private parameters:Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

.field private prf:Lnet/lingala/zip4j/crypto/PBKDF2/PRF;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;)V
    .locals 1
    .param p1, "parameters"    # Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;-><init>(Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;Lnet/lingala/zip4j/crypto/PBKDF2/PRF;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;Lnet/lingala/zip4j/crypto/PBKDF2/PRF;)V
    .locals 0
    .param p1, "parameters"    # Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
    .param p2, "prf"    # Lnet/lingala/zip4j/crypto/PBKDF2/PRF;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->parameters:Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    .line 37
    iput-object p2, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lnet/lingala/zip4j/crypto/PBKDF2/PRF;

    .line 38
    return-void
.end method

.method private PBKDF2(Lnet/lingala/zip4j/crypto/PBKDF2/PRF;[BII)[B
    .locals 11
    .param p1, "prf"    # Lnet/lingala/zip4j/crypto/PBKDF2/PRF;
    .param p2, "S"    # [B
    .param p3, "c"    # I
    .param p4, "dkLen"    # I

    .prologue
    .line 89
    if-nez p2, :cond_0

    .line 90
    const/4 v0, 0x0

    new-array p2, v0, [B

    .line 92
    :cond_0
    invoke-interface {p1}, Lnet/lingala/zip4j/crypto/PBKDF2/PRF;->getHLen()I

    move-result v8

    .line 93
    .local v8, "hLen":I
    invoke-direct {p0, p4, v8}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->ceil(II)I

    move-result v9

    .line 94
    .local v9, "l":I
    add-int/lit8 v0, v9, -0x1

    mul-int/2addr v0, v8

    sub-int v10, p4, v0

    .line 95
    .local v10, "r":I
    mul-int v0, v9, v8

    new-array v1, v0, [B

    .line 96
    .local v1, "T":[B
    const/4 v2, 0x0

    .line 97
    .local v2, "ti_offset":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    if-gt v6, v9, :cond_1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 98
    invoke-direct/range {v0 .. v6}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->_F([BILnet/lingala/zip4j/crypto/PBKDF2/PRF;[BII)V

    .line 99
    add-int/2addr v2, v8

    .line 97
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 101
    :cond_1
    if-ge v10, v8, :cond_2

    .line 103
    new-array v7, p4, [B

    .line 104
    .local v7, "DK":[B
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v7, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    .end local v7    # "DK":[B
    :goto_1
    return-object v7

    :cond_2
    move-object v7, v1

    goto :goto_1
.end method

.method private _F([BILnet/lingala/zip4j/crypto/PBKDF2/PRF;[BII)V
    .locals 6
    .param p1, "dest"    # [B
    .param p2, "offset"    # I
    .param p3, "prf"    # Lnet/lingala/zip4j/crypto/PBKDF2/PRF;
    .param p4, "S"    # [B
    .param p5, "c"    # I
    .param p6, "blockIndex"    # I

    .prologue
    const/4 v5, 0x0

    .line 120
    invoke-interface {p3}, Lnet/lingala/zip4j/crypto/PBKDF2/PRF;->getHLen()I

    move-result v2

    .line 121
    .local v2, "hLen":I
    new-array v1, v2, [B

    .line 124
    .local v1, "U_r":[B
    array-length v4, p4

    add-int/lit8 v4, v4, 0x4

    new-array v0, v4, [B

    .line 125
    .local v0, "U_i":[B
    array-length v4, p4

    invoke-static {p4, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    array-length v4, p4

    invoke-virtual {p0, v0, v4, p6}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->INT([BII)V

    .line 128
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p5, :cond_0

    .line 129
    invoke-interface {p3, v0}, Lnet/lingala/zip4j/crypto/PBKDF2/PRF;->doFinal([B)[B

    move-result-object v0

    .line 130
    invoke-direct {p0, v1, v0}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->xor([B[B)V

    .line 128
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    :cond_0
    invoke-static {v1, v5, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    return-void
.end method

.method private assertPRF([B)V
    .locals 2
    .param p1, "P"    # [B

    .prologue
    .line 78
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lnet/lingala/zip4j/crypto/PBKDF2/PRF;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    iget-object v1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->parameters:Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    invoke-virtual {v1}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lnet/lingala/zip4j/crypto/PBKDF2/PRF;

    .line 81
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lnet/lingala/zip4j/crypto/PBKDF2/PRF;

    invoke-interface {v0, p1}, Lnet/lingala/zip4j/crypto/PBKDF2/PRF;->init([B)V

    .line 82
    return-void
.end method

.method private ceil(II)I
    .locals 2
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "m":I
    rem-int v1, p1, p2

    if-lez v1, :cond_0

    .line 113
    const/4 v0, 0x1

    .line 115
    :cond_0
    div-int v1, p1, p2

    add-int/2addr v1, v0

    return v1
.end method

.method private xor([B[B)V
    .locals 3
    .param p1, "dest"    # [B
    .param p2, "src"    # [B

    .prologue
    .line 136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 137
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method


# virtual methods
.method protected INT([BII)V
    .locals 2
    .param p1, "dest"    # [B
    .param p2, "offset"    # I
    .param p3, "i"    # I

    .prologue
    .line 142
    const/high16 v0, 0x1000000

    div-int v0, p3, v0

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 143
    add-int/lit8 v0, p2, 0x1

    const/high16 v1, 0x10000

    div-int v1, p3, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 144
    add-int/lit8 v0, p2, 0x2

    div-int/lit16 v1, p3, 0x100

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 145
    add-int/lit8 v0, p2, 0x3

    int-to-byte v1, p3

    aput-byte v1, p1, v0

    .line 146
    return-void
.end method

.method public deriveKey([C)[B
    .locals 1
    .param p1, "inputPassword"    # [C

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->deriveKey([CI)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveKey([CI)[B
    .locals 4
    .param p1, "inputPassword"    # [C
    .param p2, "dkLen"    # I

    .prologue
    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 50
    :cond_0
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->convertCharArrayToByteArray([C)[B

    move-result-object v0

    .line 52
    .local v0, "p":[B
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->assertPRF([B)V

    .line 53
    if-nez p2, :cond_1

    .line 54
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lnet/lingala/zip4j/crypto/PBKDF2/PRF;

    invoke-interface {v1}, Lnet/lingala/zip4j/crypto/PBKDF2/PRF;->getHLen()I

    move-result p2

    .line 56
    :cond_1
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lnet/lingala/zip4j/crypto/PBKDF2/PRF;

    iget-object v2, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->parameters:Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    invoke-virtual {v2}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->getSalt()[B

    move-result-object v2

    iget-object v3, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->parameters:Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    invoke-virtual {v3}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->getIterationCount()I

    move-result v3

    invoke-direct {p0, v1, v2, v3, p2}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->PBKDF2(Lnet/lingala/zip4j/crypto/PBKDF2/PRF;[BII)[B

    move-result-object v1

    return-object v1
.end method

.method public getParameters()Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->parameters:Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    return-object v0
.end method

.method public getPseudoRandomFunction()Lnet/lingala/zip4j/crypto/PBKDF2/PRF;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lnet/lingala/zip4j/crypto/PBKDF2/PRF;

    return-object v0
.end method

.method public setParameters(Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;)V
    .locals 0
    .param p1, "parameters"    # Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    .prologue
    .line 153
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->parameters:Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    .line 154
    return-void
.end method

.method public setPseudoRandomFunction(Lnet/lingala/zip4j/crypto/PBKDF2/PRF;)V
    .locals 0
    .param p1, "prf"    # Lnet/lingala/zip4j/crypto/PBKDF2/PRF;

    .prologue
    .line 157
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lnet/lingala/zip4j/crypto/PBKDF2/PRF;

    .line 158
    return-void
.end method

.method public verifyKey([C)Z
    .locals 6
    .param p1, "inputPassword"    # [C

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-virtual {p0}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->getParameters()Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->getDerivedKey()[B

    move-result-object v2

    .line 61
    .local v2, "referenceKey":[B
    if-eqz v2, :cond_0

    array-length v4, v2

    if-nez v4, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v3

    .line 64
    :cond_1
    array-length v4, v2

    invoke-virtual {p0, p1, v4}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->deriveKey([CI)[B

    move-result-object v1

    .line 66
    .local v1, "inputKey":[B
    if-eqz v1, :cond_0

    array-length v4, v1

    array-length v5, v2

    if-ne v4, v5, :cond_0

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_2

    .line 70
    aget-byte v4, v1, v0

    aget-byte v5, v2, v0

    if-ne v4, v5, :cond_0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 74
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

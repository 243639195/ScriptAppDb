.class public Lcom/b/b/i;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/b/b/i;",
        ">;"
    }
.end annotation


# static fields
.field static final a:[C

.field public static final b:Lcom/b/b/i;


# instance fields
.field final c:[B

.field transient d:I

.field transient e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 52
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/b/b/i;->a:[C

    const/4 v0, 0x0

    .line 57
    new-array v0, v0, [B

    invoke-static {v0}, Lcom/b/b/i;->a([B)Lcom/b/b/i;

    move-result-object v0

    sput-object v0, Lcom/b/b/i;->b:Lcom/b/b/i;

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method constructor <init>([B)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/b/b/i;->c:[B

    return-void
.end method

.method private static a(C)I
    .locals 3

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v1, 0x66

    if-gt p0, v1, :cond_1

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v1, 0x46

    if-gt p0, v1, :cond_2

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    .line 225
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected hex digit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;)Lcom/b/b/i;
    .locals 2

    if-nez p0, :cond_0

    .line 98
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "s == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 99
    :cond_0
    new-instance v0, Lcom/b/b/i;

    sget-object v1, Lcom/b/b/aa;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/b/b/i;-><init>([B)V

    .line 100
    iput-object p0, v0, Lcom/b/b/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static varargs a([B)Lcom/b/b/i;
    .locals 1

    if-nez p0, :cond_0

    .line 71
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "data == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_0
    new-instance v0, Lcom/b/b/i;

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-direct {v0, p0}, Lcom/b/b/i;-><init>([B)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/b/b/i;
    .locals 4

    .line 210
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected hex string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 213
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    mul-int/lit8 v2, v1, 0x2

    .line 214
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/b/b/i;->a(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v2, v2, 0x1

    .line 215
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/b/b/i;->a(C)I

    move-result v2

    add-int/2addr v3, v2

    int-to-byte v2, v3

    .line 216
    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    :cond_1
    invoke-static {v0}, Lcom/b/b/i;->a([B)Lcom/b/b/i;

    move-result-object p0

    return-object p0
.end method

.method private c(Ljava/lang/String;)Lcom/b/b/i;
    .locals 1

    .line 150
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iget-object v0, p0, Lcom/b/b/i;->c:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/b/b/i;->a([B)Lcom/b/b/i;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 152
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public a(I)B
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/b/b/i;->c:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public a(II)Lcom/b/b/i;
    .locals 3

    if-gez p1, :cond_0

    .line 310
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "beginIndex < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/b/b/i;->c:[B

    array-length v0, v0

    if-le p2, v0, :cond_1

    .line 312
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "endIndex > length("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/b/b/i;->c:[B

    array-length v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sub-int v0, p2, p1

    if-gez v0, :cond_2

    .line 316
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "endIndex < beginIndex"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-nez p1, :cond_3

    .line 318
    iget-object v1, p0, Lcom/b/b/i;->c:[B

    array-length v1, v1

    if-ne p2, v1, :cond_3

    return-object p0

    .line 322
    :cond_3
    new-array p2, v0, [B

    .line 323
    iget-object v1, p0, Lcom/b/b/i;->c:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    new-instance p1, Lcom/b/b/i;

    invoke-direct {p1, p2}, Lcom/b/b/i;-><init>([B)V

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/b/b/i;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/b/b/i;->c:[B

    sget-object v2, Lcom/b/b/aa;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/b/b/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method a(Lcom/b/b/f;)V
    .locals 3

    .line 366
    iget-object v0, p0, Lcom/b/b/i;->c:[B

    iget-object v1, p0, Lcom/b/b/i;->c:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/b/b/f;->a([BII)Lcom/b/b/f;

    return-void
.end method

.method public a(ILcom/b/b/i;II)Z
    .locals 0

    .line 375
    iget-object p1, p0, Lcom/b/b/i;->c:[B

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1, p3, p4}, Lcom/b/b/i;->a(I[BII)Z

    move-result p1

    return p1
.end method

.method public a(I[BII)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 384
    iget-object v0, p0, Lcom/b/b/i;->c:[B

    array-length v0, v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_0

    if-ltz p3, :cond_0

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_0

    iget-object v0, p0, Lcom/b/b/i;->c:[B

    .line 386
    invoke-static {v0, p1, p2, p3, p4}, Lcom/b/b/aa;->a([BI[BII)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/b/b/i;->c:[B

    invoke-static {v0}, Lcom/b/b/e;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/b/b/i;
    .locals 1

    const-string v0, "SHA-1"

    .line 140
    invoke-direct {p0, v0}, Lcom/b/b/i;->c(Ljava/lang/String;)Lcom/b/b/i;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 9

    .line 51
    check-cast p1, Lcom/b/b/i;

    .line 2462
    invoke-virtual {p0}, Lcom/b/b/i;->g()I

    move-result v0

    .line 2463
    invoke-virtual {p1}, Lcom/b/b/i;->g()I

    move-result v1

    .line 2464
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v4, v2, :cond_2

    .line 2465
    invoke-virtual {p0, v4}, Lcom/b/b/i;->a(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    .line 2466
    invoke-virtual {p1, v4}, Lcom/b/b/i;->a(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    if-eq v7, v8, :cond_1

    if-ge v7, v8, :cond_0

    return v5

    :cond_0
    return v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    return v3

    :cond_3
    if-ge v0, v1, :cond_4

    return v5

    :cond_4
    return v6
.end method

.method public d()Lcom/b/b/i;
    .locals 1

    const-string v0, "SHA-256"

    .line 145
    invoke-direct {p0, v0}, Lcom/b/b/i;->c(Ljava/lang/String;)Lcom/b/b/i;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 9

    .line 198
    iget-object v0, p0, Lcom/b/b/i;->c:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 200
    iget-object v1, p0, Lcom/b/b/i;->c:[B

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v5, v1, v3

    add-int/lit8 v6, v4, 0x1

    .line 201
    sget-object v7, Lcom/b/b/i;->a:[C

    shr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v4

    add-int/lit8 v4, v6, 0x1

    .line 202
    sget-object v7, Lcom/b/b/i;->a:[C

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v7, v5

    aput-char v5, v0, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 204
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 451
    :cond_0
    instance-of v1, p1, Lcom/b/b/i;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/b/b/i;

    .line 452
    invoke-virtual {p1}, Lcom/b/b/i;->g()I

    move-result v1

    iget-object v3, p0, Lcom/b/b/i;->c:[B

    array-length v3, v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/b/b/i;->c:[B

    iget-object v3, p0, Lcom/b/b/i;->c:[B

    array-length v3, v3

    .line 453
    invoke-virtual {p1, v2, v1, v2, v3}, Lcom/b/b/i;->a(I[BII)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public f()Lcom/b/b/i;
    .locals 6

    const/4 v0, 0x0

    .line 253
    :goto_0
    iget-object v1, p0, Lcom/b/b/i;->c:[B

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 254
    iget-object v1, p0, Lcom/b/b/i;->c:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x41

    if-lt v1, v2, :cond_2

    const/16 v3, 0x5a

    if-gt v1, v3, :cond_2

    .line 259
    iget-object v4, p0, Lcom/b/b/i;->c:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v1, v1, 0x20

    int-to-byte v1, v1

    .line 260
    aput-byte v1, v4, v0

    .line 261
    :goto_1
    array-length v0, v4

    if-ge v5, v0, :cond_1

    .line 262
    aget-byte v0, v4, v5

    if-lt v0, v2, :cond_0

    if-gt v0, v3, :cond_0

    add-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    .line 264
    aput-byte v0, v4, v5

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 266
    :cond_1
    new-instance v0, Lcom/b/b/i;

    invoke-direct {v0, v4}, Lcom/b/b/i;-><init>([B)V

    return-object v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public g()I
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/b/b/i;->c:[B

    array-length v0, v0

    return v0
.end method

.method public h()[B
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/b/b/i;->c:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 457
    iget v0, p0, Lcom/b/b/i;->d:I

    if-eqz v0, :cond_0

    return v0

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/b/b/i;->c:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/b/b/i;->d:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 479
    iget-object v0, p0, Lcom/b/b/i;->c:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const-string v0, "[size=0]"

    return-object v0

    .line 483
    :cond_0
    invoke-virtual {p0}, Lcom/b/b/i;->a()Ljava/lang/String;

    move-result-object v0

    .line 1502
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    const/16 v6, 0x40

    if-ge v3, v1, :cond_5

    if-ne v4, v6, :cond_1

    goto :goto_1

    .line 1506
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    .line 1507
    invoke-static {v7}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0xa

    if-eq v7, v8, :cond_2

    const/16 v8, 0xd

    if-ne v7, v8, :cond_3

    :cond_2
    const v8, 0xfffd

    if-ne v7, v8, :cond_4

    :cond_3
    const/4 v3, -0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 1502
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_0

    .line 1513
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    :goto_1
    if-ne v3, v5, :cond_7

    .line 487
    iget-object v0, p0, Lcom/b/b/i;->c:[B

    array-length v0, v0

    if-gt v0, v6, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[hex="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p0}, Lcom/b/b/i;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/b/b/i;->c:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {p0, v2, v6}, Lcom/b/b/i;->a(II)Lcom/b/b/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/b/i;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u2026]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 492
    :cond_7
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\"

    const-string v4, "\\\\"

    .line 493
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v4, "\\n"

    .line 494
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\r"

    const-string v4, "\\r"

    .line 495
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 496
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[size="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/b/b/i;->c:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " text="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u2026]"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[text="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    goto :goto_2
.end method

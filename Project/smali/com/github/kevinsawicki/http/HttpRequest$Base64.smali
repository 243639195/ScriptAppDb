.class public Lcom/github/kevinsawicki/http/HttpRequest$Base64;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/kevinsawicki/http/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base64"
.end annotation


# static fields
.field private static final EQUALS_SIGN:B = 0x3dt

.field private static final PREFERRED_ENCODING:Ljava/lang/String; = "US-ASCII"

.field private static final _STANDARD_ALPHABET:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    .line 454
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/github/kevinsawicki/http/HttpRequest$Base64;->_STANDARD_ALPHABET:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "US-ASCII"

    .line 546
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 548
    :catch_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 550
    :goto_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest$Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static encode3to4([BII[BI)[B
    .locals 4

    .line 504
    sget-object v0, Lcom/github/kevinsawicki/http/HttpRequest$Base64;->_STANDARD_ALPHABET:[B

    const/4 v1, 0x0

    if-lez p2, :cond_0

    .line 506
    aget-byte v2, p0, p1

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-le p2, v3, :cond_1

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x10

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    or-int/2addr v2, v3

    const/4 v3, 0x2

    if-le p2, v3, :cond_2

    add-int/2addr p1, v3

    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    ushr-int/lit8 v1, p0, 0x18

    :cond_2
    or-int p0, v2, v1

    const/16 p1, 0x3d

    packed-switch p2, :pswitch_data_0

    return-object p3

    :pswitch_0
    ushr-int/lit8 p1, p0, 0x12

    .line 512
    aget-byte p1, v0, p1

    aput-byte p1, p3, p4

    add-int/lit8 p1, p4, 0x1

    ushr-int/lit8 p2, p0, 0xc

    and-int/lit8 p2, p2, 0x3f

    .line 513
    aget-byte p2, v0, p2

    aput-byte p2, p3, p1

    add-int/lit8 p1, p4, 0x2

    ushr-int/lit8 p2, p0, 0x6

    and-int/lit8 p2, p2, 0x3f

    .line 514
    aget-byte p2, v0, p2

    aput-byte p2, p3, p1

    add-int/lit8 p4, p4, 0x3

    and-int/lit8 p0, p0, 0x3f

    .line 515
    aget-byte p0, v0, p0

    aput-byte p0, p3, p4

    return-object p3

    :pswitch_1
    ushr-int/lit8 p2, p0, 0x12

    .line 519
    aget-byte p2, v0, p2

    aput-byte p2, p3, p4

    add-int/lit8 p2, p4, 0x1

    ushr-int/lit8 v1, p0, 0xc

    and-int/lit8 v1, v1, 0x3f

    .line 520
    aget-byte v1, v0, v1

    aput-byte v1, p3, p2

    add-int/lit8 p2, p4, 0x2

    ushr-int/lit8 p0, p0, 0x6

    and-int/lit8 p0, p0, 0x3f

    .line 521
    aget-byte p0, v0, p0

    aput-byte p0, p3, p2

    add-int/lit8 p4, p4, 0x3

    .line 522
    aput-byte p1, p3, p4

    return-object p3

    :pswitch_2
    ushr-int/lit8 p2, p0, 0x12

    .line 526
    aget-byte p2, v0, p2

    aput-byte p2, p3, p4

    add-int/lit8 p2, p4, 0x1

    ushr-int/lit8 p0, p0, 0xc

    and-int/lit8 p0, p0, 0x3f

    .line 527
    aget-byte p0, v0, p0

    aput-byte p0, p3, p2

    add-int/lit8 p0, p4, 0x2

    .line 528
    aput-byte p1, p3, p0

    add-int/lit8 p4, p4, 0x3

    .line 529
    aput-byte p1, p3, p4

    return-object p3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static encodeBytes([B)Ljava/lang/String;
    .locals 2

    .line 566
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest$Base64;->encodeBytes([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeBytes([BII)Ljava/lang/String;
    .locals 0

    .line 586
    invoke-static {p0, p1, p2}, Lcom/github/kevinsawicki/http/HttpRequest$Base64;->encodeBytesToBytes([BII)[B

    move-result-object p0

    .line 588
    :try_start_0
    new-instance p1, Ljava/lang/String;

    const-string p2, "US-ASCII"

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 590
    :catch_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method public static encodeBytesToBytes([BII)[B
    .locals 8

    if-nez p0, :cond_0

    .line 616
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Cannot serialize a null array."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-gez p1, :cond_1

    .line 619
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot have negative offset: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-gez p2, :cond_2

    .line 623
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot have length offset: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    add-int v0, p1, p2

    .line 625
    array-length v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-le v0, v1, :cond_3

    .line 626
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot have offset of %d and length of %d with array of length %d"

    new-array v3, v3, [Ljava/lang/Object;

    .line 630
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v3, p1

    .line 628
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :cond_3
    div-int/lit8 v0, p2, 0x3

    const/4 v1, 0x4

    mul-int/lit8 v0, v0, 0x4

    rem-int/lit8 v5, p2, 0x3

    if-lez v5, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 635
    new-array v0, v0, [B

    add-int/lit8 v1, p2, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v1, :cond_5

    add-int v7, v5, p1

    .line 641
    invoke-static {p0, v7, v3, v0, v6}, Lcom/github/kevinsawicki/http/HttpRequest$Base64;->encode3to4([BII[BI)[B

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v6, v6, 0x4

    goto :goto_1

    :cond_5
    if-ge v5, p2, :cond_6

    add-int/2addr p1, v5

    sub-int/2addr p2, v5

    .line 644
    invoke-static {p0, p1, p2, v0, v6}, Lcom/github/kevinsawicki/http/HttpRequest$Base64;->encode3to4([BII[BI)[B

    add-int/lit8 v6, v6, 0x4

    .line 648
    :cond_6
    array-length p0, v0

    sub-int/2addr p0, v2

    if-gt v6, p0, :cond_7

    .line 649
    new-array p0, v6, [B

    .line 650
    invoke-static {v0, v4, p0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_7
    return-object v0
.end method

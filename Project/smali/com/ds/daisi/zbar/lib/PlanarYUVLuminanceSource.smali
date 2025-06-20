.class public final Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;
.super Lcom/ds/daisi/zbar/lib/LuminanceSource;
.source "PlanarYUVLuminanceSource.java"


# static fields
.field private static final THUMBNAIL_SCALE_FACTOR:I = 0x2


# instance fields
.field private final dataHeight:I

.field private final dataWidth:I

.field private final left:I

.field private final top:I

.field private final yuvData:[B


# direct methods
.method public constructor <init>([BIIIIIIZ)V
    .locals 1

    .line 14
    invoke-direct {p0, p6, p7}, Lcom/ds/daisi/zbar/lib/LuminanceSource;-><init>(II)V

    add-int v0, p4, p6

    if-gt v0, p2, :cond_2

    add-int v0, p5, p7

    if-le v0, p3, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    iput-object p1, p0, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->yuvData:[B

    .line 21
    iput p2, p0, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->dataWidth:I

    .line 22
    iput p3, p0, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->dataHeight:I

    .line 23
    iput p4, p0, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->left:I

    .line 24
    iput p5, p0, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->top:I

    if-eqz p8, :cond_1

    .line 26
    invoke-direct {p0, p6, p7}, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->reverseHorizontal(II)V

    :cond_1
    return-void

    .line 17
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Crop rectangle does not fit within image data."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private reverseHorizontal(II)V
    .locals 8

    .line 121
    iget-object v0, p0, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->yuvData:[B

    .line 122
    iget v1, p0, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->top:I

    iget v2, p0, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int v1, v1, v2

    iget v2, p0, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->left:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    .line 123
    div-int/lit8 v3, p1, 0x2

    add-int/2addr v3, v1

    add-int v4, v1, p1

    add-int/lit8 v4, v4, -0x1

    move v5, v4

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_0

    .line 125
    aget-byte v6, v0, v4

    .line 126
    aget-byte v7, v0, v5

    aput-byte v7, v0, v4

    .line 127
    aput-byte v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 122
    iget v3, p0, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->dataWidth:I

    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public crop(IIII)Lcom/ds/daisi/zbar/lib/LuminanceSource;
    .locals 10

    .line 85
    new-instance v9, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;

    iget-object v1, p0, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->yuvData:[B

    iget v2, p0, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->dataWidth:I

    iget v3, p0, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->dataHeight:I

    iget v0, p0, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->left:I

    add-int v4, v0, p1

    iget p1, p0, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->top:I

    add-int v5, p1, p2

    const/4 v8, 0x0

    move-object v0, v9

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    return-object v9
.end method

.method public getMatrix()[B
    .locals 7

    .line 46
    invoke-virtual {p0}, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->getWidth()I

    move-result v0

    .line 47
    invoke-virtual {p0}, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->getHeight()I

    move-result v1

    .line 53
    iget v2, p0, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->dataWidth:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->dataHeight:I

    if-ne v1, v2, :cond_0

    .line 54
    iget-object v0, p0, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->yuvData:[B

    return-object v0

    :cond_0
    mul-int v2, v0, v1

    .line 58
    new-array v3, v2, [B

    .line 59
    iget v4, p0, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->top:I

    iget v5, p0, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int v4, v4, v5

    iget v5, p0, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->left:I

    add-int/2addr v4, v5

    .line 63
    iget v5, p0, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->dataWidth:I

    const/4 v6, 0x0

    if-ne v0, v5, :cond_1

    .line 64
    iget-object v0, p0, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->yuvData:[B

    invoke-static {v0, v4, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    .line 69
    :cond_1
    iget-object v2, p0, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->yuvData:[B

    :goto_0
    if-ge v6, v1, :cond_2

    mul-int v5, v6, v0

    .line 72
    invoke-static {v2, v4, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iget v5, p0, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->dataWidth:I

    add-int/2addr v4, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public getRow(I[B)[B
    .locals 3

    if-ltz p1, :cond_3

    .line 32
    invoke-virtual {p0}, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->getHeight()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->getWidth()I

    move-result v0

    if-eqz p2, :cond_1

    .line 36
    array-length v1, p2

    if-ge v1, v0, :cond_2

    .line 37
    :cond_1
    new-array p2, v0, [B

    .line 39
    :cond_2
    iget v1, p0, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->top:I

    add-int/2addr p1, v1

    iget v1, p0, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int p1, p1, v1

    iget v1, p0, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->left:I

    add-int/2addr p1, v1

    .line 40
    iget-object v1, p0, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->yuvData:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 33
    :cond_3
    :goto_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested row is outside the image: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getThumbnailHeight()I
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getThumbnailWidth()I
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public isCropSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public renderThumbnail()[I
    .locals 13

    .line 89
    invoke-virtual {p0}, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 90
    invoke-virtual {p0}, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    mul-int v2, v0, v1

    .line 91
    new-array v2, v2, [I

    .line 92
    iget-object v3, p0, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->yuvData:[B

    .line 93
    iget v4, p0, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->top:I

    iget v5, p0, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int v4, v4, v5

    iget v5, p0, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->left:I

    add-int/2addr v4, v5

    const/4 v5, 0x0

    move v6, v4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    mul-int v7, v4, v0

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v0, :cond_0

    mul-int/lit8 v9, v8, 0x2

    add-int/2addr v9, v6

    .line 98
    aget-byte v9, v3, v9

    and-int/lit16 v9, v9, 0xff

    add-int v10, v7, v8

    const/high16 v11, -0x1000000

    const v12, 0x10101

    mul-int v9, v9, v12

    or-int/2addr v9, v11

    .line 99
    aput v9, v2, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 101
    :cond_0
    iget v7, p0, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.class public abstract Lcom/ds/daisi/zbar/lib/LuminanceSource;
.super Ljava/lang/Object;
.source "LuminanceSource.java"


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/ds/daisi/zbar/lib/LuminanceSource;->width:I

    .line 10
    iput p2, p0, Lcom/ds/daisi/zbar/lib/LuminanceSource;->height:I

    return-void
.end method


# virtual methods
.method public crop(IIII)Lcom/ds/daisi/zbar/lib/LuminanceSource;
    .locals 0

    .line 78
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This luminance source does not support cropping."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getHeight()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/ds/daisi/zbar/lib/LuminanceSource;->height:I

    return v0
.end method

.method public abstract getMatrix()[B
.end method

.method public abstract getRow(I[B)[B
.end method

.method public final getWidth()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/ds/daisi/zbar/lib/LuminanceSource;->width:I

    return v0
.end method

.method public invert()Lcom/ds/daisi/zbar/lib/LuminanceSource;
    .locals 1

    .line 94
    new-instance v0, Lcom/ds/daisi/zbar/lib/InvertedLuminanceSource;

    invoke-direct {v0, p0}, Lcom/ds/daisi/zbar/lib/InvertedLuminanceSource;-><init>(Lcom/ds/daisi/zbar/lib/LuminanceSource;)V

    return-object v0
.end method

.method public isCropSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRotateSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public rotateCounterClockwise()Lcom/ds/daisi/zbar/lib/LuminanceSource;
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This luminance source does not support rotation by 90 degrees."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rotateCounterClockwise45()Lcom/ds/daisi/zbar/lib/LuminanceSource;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This luminance source does not support rotation by 45 degrees."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 119
    iget v0, p0, Lcom/ds/daisi/zbar/lib/LuminanceSource;->width:I

    new-array v0, v0, [B

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ds/daisi/zbar/lib/LuminanceSource;->height:I

    iget v3, p0, Lcom/ds/daisi/zbar/lib/LuminanceSource;->width:I

    add-int/lit8 v3, v3, 0x1

    mul-int v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    move-object v3, v0

    const/4 v0, 0x0

    .line 121
    :goto_0
    iget v4, p0, Lcom/ds/daisi/zbar/lib/LuminanceSource;->height:I

    if-ge v0, v4, :cond_4

    .line 122
    invoke-virtual {p0, v0, v3}, Lcom/ds/daisi/zbar/lib/LuminanceSource;->getRow(I[B)[B

    move-result-object v3

    const/4 v4, 0x0

    .line 123
    :goto_1
    iget v5, p0, Lcom/ds/daisi/zbar/lib/LuminanceSource;->width:I

    if-ge v4, v5, :cond_3

    .line 124
    aget-byte v5, v3, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x40

    if-ge v5, v6, :cond_0

    const/16 v5, 0x23

    goto :goto_2

    :cond_0
    const/16 v6, 0x80

    if-ge v5, v6, :cond_1

    const/16 v5, 0x2b

    goto :goto_2

    :cond_1
    const/16 v6, 0xc0

    if-ge v5, v6, :cond_2

    const/16 v5, 0x2e

    goto :goto_2

    :cond_2
    const/16 v5, 0x20

    .line 135
    :goto_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/16 v4, 0xa

    .line 137
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

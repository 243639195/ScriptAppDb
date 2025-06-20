.class public final Lcom/ds/daisi/zbar/lib/InvertedLuminanceSource;
.super Lcom/ds/daisi/zbar/lib/LuminanceSource;
.source "InvertedLuminanceSource.java"


# instance fields
.field private final delegate:Lcom/ds/daisi/zbar/lib/LuminanceSource;


# direct methods
.method public constructor <init>(Lcom/ds/daisi/zbar/lib/LuminanceSource;)V
    .locals 2

    .line 8
    invoke-virtual {p1}, Lcom/ds/daisi/zbar/lib/LuminanceSource;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/ds/daisi/zbar/lib/LuminanceSource;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/ds/daisi/zbar/lib/LuminanceSource;-><init>(II)V

    .line 9
    iput-object p1, p0, Lcom/ds/daisi/zbar/lib/InvertedLuminanceSource;->delegate:Lcom/ds/daisi/zbar/lib/LuminanceSource;

    return-void
.end method


# virtual methods
.method public crop(IIII)Lcom/ds/daisi/zbar/lib/LuminanceSource;
    .locals 2

    .line 40
    new-instance v0, Lcom/ds/daisi/zbar/lib/InvertedLuminanceSource;

    iget-object v1, p0, Lcom/ds/daisi/zbar/lib/InvertedLuminanceSource;->delegate:Lcom/ds/daisi/zbar/lib/LuminanceSource;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ds/daisi/zbar/lib/LuminanceSource;->crop(IIII)Lcom/ds/daisi/zbar/lib/LuminanceSource;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ds/daisi/zbar/lib/InvertedLuminanceSource;-><init>(Lcom/ds/daisi/zbar/lib/LuminanceSource;)V

    return-object v0
.end method

.method public getMatrix()[B
    .locals 5

    .line 24
    iget-object v0, p0, Lcom/ds/daisi/zbar/lib/InvertedLuminanceSource;->delegate:Lcom/ds/daisi/zbar/lib/LuminanceSource;

    invoke-virtual {v0}, Lcom/ds/daisi/zbar/lib/LuminanceSource;->getMatrix()[B

    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lcom/ds/daisi/zbar/lib/InvertedLuminanceSource;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/ds/daisi/zbar/lib/InvertedLuminanceSource;->getHeight()I

    move-result v2

    mul-int v1, v1, v2

    .line 26
    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 28
    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    rsub-int v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getRow(I[B)[B
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/ds/daisi/zbar/lib/InvertedLuminanceSource;->delegate:Lcom/ds/daisi/zbar/lib/LuminanceSource;

    invoke-virtual {v0, p1, p2}, Lcom/ds/daisi/zbar/lib/LuminanceSource;->getRow(I[B)[B

    move-result-object p1

    .line 15
    invoke-virtual {p0}, Lcom/ds/daisi/zbar/lib/InvertedLuminanceSource;->getWidth()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 17
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    rsub-int v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public invert()Lcom/ds/daisi/zbar/lib/LuminanceSource;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/ds/daisi/zbar/lib/InvertedLuminanceSource;->delegate:Lcom/ds/daisi/zbar/lib/LuminanceSource;

    return-object v0
.end method

.method public isCropSupported()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/ds/daisi/zbar/lib/InvertedLuminanceSource;->delegate:Lcom/ds/daisi/zbar/lib/LuminanceSource;

    invoke-virtual {v0}, Lcom/ds/daisi/zbar/lib/LuminanceSource;->isCropSupported()Z

    move-result v0

    return v0
.end method

.method public isRotateSupported()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/ds/daisi/zbar/lib/InvertedLuminanceSource;->delegate:Lcom/ds/daisi/zbar/lib/LuminanceSource;

    invoke-virtual {v0}, Lcom/ds/daisi/zbar/lib/LuminanceSource;->isRotateSupported()Z

    move-result v0

    return v0
.end method

.method public rotateCounterClockwise()Lcom/ds/daisi/zbar/lib/LuminanceSource;
    .locals 2

    .line 59
    new-instance v0, Lcom/ds/daisi/zbar/lib/InvertedLuminanceSource;

    iget-object v1, p0, Lcom/ds/daisi/zbar/lib/InvertedLuminanceSource;->delegate:Lcom/ds/daisi/zbar/lib/LuminanceSource;

    invoke-virtual {v1}, Lcom/ds/daisi/zbar/lib/LuminanceSource;->rotateCounterClockwise()Lcom/ds/daisi/zbar/lib/LuminanceSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ds/daisi/zbar/lib/InvertedLuminanceSource;-><init>(Lcom/ds/daisi/zbar/lib/LuminanceSource;)V

    return-object v0
.end method

.method public rotateCounterClockwise45()Lcom/ds/daisi/zbar/lib/LuminanceSource;
    .locals 2

    .line 64
    new-instance v0, Lcom/ds/daisi/zbar/lib/InvertedLuminanceSource;

    iget-object v1, p0, Lcom/ds/daisi/zbar/lib/InvertedLuminanceSource;->delegate:Lcom/ds/daisi/zbar/lib/LuminanceSource;

    invoke-virtual {v1}, Lcom/ds/daisi/zbar/lib/LuminanceSource;->rotateCounterClockwise45()Lcom/ds/daisi/zbar/lib/LuminanceSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ds/daisi/zbar/lib/InvertedLuminanceSource;-><init>(Lcom/ds/daisi/zbar/lib/LuminanceSource;)V

    return-object v0
.end method

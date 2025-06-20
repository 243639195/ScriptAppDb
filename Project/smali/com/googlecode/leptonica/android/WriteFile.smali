.class public Lcom/googlecode/leptonica/android/WriteFile;
.super Ljava/lang/Object;
.source "WriteFile.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "jpgt"

    .line 29
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "pngt"

    .line 30
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "lept"

    .line 31
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/googlecode/leptonica/android/Pix;[B)I
    .locals 2

    if-nez p0, :cond_0

    .line 69
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->c()I

    move-result v0

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->d()I

    move-result v1

    mul-int v0, v0, v1

    .line 73
    array-length v1, p1

    if-ge v1, v0, :cond_1

    .line 74
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Data array must be large enough to hold image bytes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/googlecode/leptonica/android/WriteFile;->nativeWriteBytes8(J[B)I

    move-result p0

    return p0
.end method

.method public static a(Lcom/googlecode/leptonica/android/Pix;)Landroid/graphics/Bitmap;
    .locals 5

    if-nez p0, :cond_0

    .line 112
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1109
    :cond_0
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    if-eqz v0, :cond_1

    .line 1110
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    const/4 v0, 0x3

    .line 1112
    new-array v0, v0, [I

    .line 1129
    iget-boolean v1, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    if-eqz v1, :cond_2

    .line 1130
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 1132
    :cond_2
    iget-wide v1, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    invoke-static {v1, v2, v0}, Lcom/googlecode/leptonica/android/Pix;->nativeGetDimensions(J[I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, v2

    :goto_0
    const/4 v1, 0x0

    .line 115
    aget v1, v0, v1

    const/4 v3, 0x1

    .line 116
    aget v0, v0, v3

    .line 118
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 119
    invoke-static {v1, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v3

    invoke-static {v3, v4, v0}, Lcom/googlecode/leptonica/android/WriteFile;->nativeWriteBitmap(JLandroid/graphics/Bitmap;)Z

    move-result p0

    if-eqz p0, :cond_4

    return-object v0

    .line 125
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v2
.end method

.method private static a(Lcom/googlecode/leptonica/android/Pix;Ljava/io/File;)Z
    .locals 2

    if-nez p0, :cond_0

    .line 94
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-nez p1, :cond_1

    .line 96
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v0

    .line 99
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 98
    invoke-static {v0, v1, p0}, Lcom/googlecode/leptonica/android/WriteFile;->nativeWriteImpliedFormat(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static b(Lcom/googlecode/leptonica/android/Pix;)[B
    .locals 3

    if-nez p0, :cond_0

    .line 42
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->c()I

    move-result v0

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->d()I

    move-result v1

    mul-int v0, v0, v1

    .line 46
    new-array v0, v0, [B

    .line 48
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->e()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 49
    invoke-static {p0}, Lcom/googlecode/leptonica/android/Convert;->a(Lcom/googlecode/leptonica/android/Pix;)Lcom/googlecode/leptonica/android/Pix;

    move-result-object p0

    .line 50
    invoke-static {p0, v0}, Lcom/googlecode/leptonica/android/WriteFile;->a(Lcom/googlecode/leptonica/android/Pix;[B)I

    .line 51
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->b()V

    goto :goto_0

    .line 53
    :cond_1
    invoke-static {p0, v0}, Lcom/googlecode/leptonica/android/WriteFile;->a(Lcom/googlecode/leptonica/android/Pix;[B)I

    :goto_0
    return-object v0
.end method

.method private static native nativeWriteBitmap(JLandroid/graphics/Bitmap;)Z
.end method

.method private static native nativeWriteBytes8(J[B)I
.end method

.method private static native nativeWriteImpliedFormat(JLjava/lang/String;)Z
.end method

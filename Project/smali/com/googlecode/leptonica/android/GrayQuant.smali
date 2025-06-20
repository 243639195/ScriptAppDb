.class public Lcom/googlecode/leptonica/android/GrayQuant;
.super Ljava/lang/Object;
.source "GrayQuant.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "jpgt"

    .line 21
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "pngt"

    .line 22
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "lept"

    .line 23
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/googlecode/leptonica/android/Pix;I)Lcom/googlecode/leptonica/android/Pix;
    .locals 3

    if-nez p0, :cond_0

    .line 41
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->e()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    .line 44
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix depth must be 4 or 8 bpp"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-ne v0, v2, :cond_2

    const/16 v2, 0x10

    if-le p1, v2, :cond_2

    .line 46
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "4 bpp thresh not in {0-16}"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-ne v0, v1, :cond_3

    const/16 v0, 0x100

    if-le p1, v0, :cond_3

    .line 48
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "8 bpp thresh not in {0-256}"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 50
    :cond_3
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/googlecode/leptonica/android/GrayQuant;->nativePixThresholdToBinary(JI)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_4

    .line 54
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to perform binarization"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 56
    :cond_4
    new-instance v0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {v0, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object v0
.end method

.method private static native nativePixThresholdToBinary(JI)J
.end method

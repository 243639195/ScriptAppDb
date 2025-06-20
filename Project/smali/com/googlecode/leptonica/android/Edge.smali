.class public Lcom/googlecode/leptonica/android/Edge;
.super Ljava/lang/Object;
.source "Edge.java"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "jpgt"

    .line 25
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "pngt"

    .line 26
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "lept"

    .line 27
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/googlecode/leptonica/android/Pix;I)Lcom/googlecode/leptonica/android/Pix;
    .locals 3

    if-nez p0, :cond_0

    .line 70
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->e()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 72
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix depth must be 8bpp"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-ltz p1, :cond_4

    const/4 v0, 0x2

    if-le p1, v0, :cond_2

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/googlecode/leptonica/android/Edge;->nativePixSobelEdgeFilter(JI)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_3

    .line 80
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to perform Sobel edge filter on image"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 82
    :cond_3
    new-instance v0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {v0, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object v0

    .line 74
    :cond_4
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid orientation flag"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native nativePixSobelEdgeFilter(JI)J
.end method

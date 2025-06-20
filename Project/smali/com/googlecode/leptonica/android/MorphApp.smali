.class public Lcom/googlecode/leptonica/android/MorphApp;
.super Ljava/lang/Object;
.source "MorphApp.java"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x7

.field public static final d:I = 0x7


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

.method private static a(Lcom/googlecode/leptonica/android/Pix;)Lcom/googlecode/leptonica/android/Pix;
    .locals 1

    const/4 v0, 0x1

    .line 87
    invoke-static {p0, v0}, Lcom/googlecode/leptonica/android/MorphApp;->a(Lcom/googlecode/leptonica/android/Pix;I)Lcom/googlecode/leptonica/android/Pix;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/googlecode/leptonica/android/Pix;I)Lcom/googlecode/leptonica/android/Pix;
    .locals 3

    if-nez p0, :cond_0

    .line 132
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->e()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 134
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix depth must be 8bpp"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-ltz p1, :cond_4

    const/4 v0, 0x1

    if-le p1, v0, :cond_2

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v0

    const/4 p0, 0x7

    invoke-static {v0, v1, p0, p0, p1}, Lcom/googlecode/leptonica/android/MorphApp;->nativePixFastTophat(JIII)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_3

    .line 144
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to perform pixFastTophat on image"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 146
    :cond_3
    new-instance v0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {v0, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object v0

    .line 138
    :cond_4
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Type must be L_TOPHAT_BLACK or L_TOPHAT_WHITE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/googlecode/leptonica/android/Pix;III)Lcom/googlecode/leptonica/android/Pix;
    .locals 2

    if-nez p0, :cond_0

    .line 60
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->e()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 62
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix depth must be 8bpp"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-lez p1, :cond_6

    if-gtz p2, :cond_2

    goto :goto_1

    :cond_2
    if-ltz p3, :cond_5

    const/4 v0, 0x1

    if-le p3, v0, :cond_3

    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/googlecode/leptonica/android/MorphApp;->nativePixTophat(JIII)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long v0, p0, p2

    if-nez v0, :cond_4

    .line 72
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to perform Tophat on image"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 74
    :cond_4
    new-instance p2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p2, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p2

    .line 66
    :cond_5
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Type must be L_TOPHAT_BLACK or L_TOPHAT_WHITE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 64
    :cond_6
    :goto_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "hsize or vsize < 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Lcom/googlecode/leptonica/android/Pix;)Lcom/googlecode/leptonica/android/Pix;
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-static {p0, v0}, Lcom/googlecode/leptonica/android/MorphApp;->a(Lcom/googlecode/leptonica/android/Pix;I)Lcom/googlecode/leptonica/android/Pix;

    move-result-object p0

    return-object p0
.end method

.method private static native nativePixFastTophat(JIII)J
.end method

.method private static native nativePixTophat(JIII)J
.end method

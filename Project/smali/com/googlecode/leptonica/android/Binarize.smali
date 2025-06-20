.class public Lcom/googlecode/leptonica/android/Binarize;
.super Ljava/lang/Object;
.source "Binarize.java"


# static fields
.field public static final a:I = 0x20

.field public static final b:I = 0x20

.field public static final c:I = 0x2

.field public static final d:I = 0x2

.field public static final e:F = 0.1f

.field public static final f:I = 0x8

.field public static final g:F = 0.35f

.field public static final h:I = 0x1

.field public static final i:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "jpgt"

    .line 27
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "pngt"

    .line 28
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "lept"

    .line 29
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/googlecode/leptonica/android/Pix;)Lcom/googlecode/leptonica/android/Pix;
    .locals 8

    if-nez p0, :cond_0

    .line 1124
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1125
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->e()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 1126
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix depth must be 8bpp"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1128
    :cond_1
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v1

    const/16 v3, 0x20

    const/16 v4, 0x20

    const/4 v5, 0x2

    const/4 v6, 0x2

    const v7, 0x3dcccccd    # 0.1f

    invoke-static/range {v1 .. v7}, Lcom/googlecode/leptonica/android/Binarize;->nativeOtsuAdaptiveThreshold(JIIIIF)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_2

    .line 1132
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to perform Otsu adaptive threshold on image"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1134
    :cond_2
    new-instance p0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p0, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p0
.end method

.method private static b(Lcom/googlecode/leptonica/android/Pix;)Lcom/googlecode/leptonica/android/Pix;
    .locals 8

    if-nez p0, :cond_0

    .line 124
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->e()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 126
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix depth must be 8bpp"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v1

    const/16 v3, 0x20

    const/16 v4, 0x20

    const/4 v5, 0x2

    const/4 v6, 0x2

    const v7, 0x3dcccccd    # 0.1f

    invoke-static/range {v1 .. v7}, Lcom/googlecode/leptonica/android/Binarize;->nativeOtsuAdaptiveThreshold(JIIIIF)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_2

    .line 132
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to perform Otsu adaptive threshold on image"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 134
    :cond_2
    new-instance p0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p0, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p0
.end method

.method private static c(Lcom/googlecode/leptonica/android/Pix;)Lcom/googlecode/leptonica/android/Pix;
    .locals 7

    if-nez p0, :cond_0

    .line 1190
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1191
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->e()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 1192
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix depth must be 8bpp"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1194
    :cond_1
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v1

    const/16 v3, 0x8

    const v4, 0x3eb33333    # 0.35f

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/googlecode/leptonica/android/Binarize;->nativeSauvolaBinarizeTiled(JIFII)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_2

    .line 1198
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to perform Sauvola binarization on image"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1200
    :cond_2
    new-instance p0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p0, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p0
.end method

.method private static d(Lcom/googlecode/leptonica/android/Pix;)Lcom/googlecode/leptonica/android/Pix;
    .locals 7

    if-nez p0, :cond_0

    .line 190
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->e()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 192
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix depth must be 8bpp"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v1

    const/16 v3, 0x8

    const v4, 0x3eb33333    # 0.35f

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/googlecode/leptonica/android/Binarize;->nativeSauvolaBinarizeTiled(JIFII)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_2

    .line 198
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to perform Sauvola binarization on image"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 200
    :cond_2
    new-instance p0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p0, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p0
.end method

.method private static native nativeOtsuAdaptiveThreshold(JIIIIF)J
.end method

.method private static native nativeSauvolaBinarizeTiled(JIFII)J
.end method

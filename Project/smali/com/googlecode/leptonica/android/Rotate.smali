.class public Lcom/googlecode/leptonica/android/Rotate;
.super Ljava/lang/Object;
.source "Rotate.java"


# static fields
.field public static final a:Z = true


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

.method private static a(Lcom/googlecode/leptonica/android/Pix;F)Lcom/googlecode/leptonica/android/Pix;
    .locals 3

    if-nez p0, :cond_0

    .line 1086
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1088
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v0

    const/4 p0, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, p0, v2}, Lcom/googlecode/leptonica/android/Rotate;->nativeRotate(JFZZ)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 1094
    :cond_1
    new-instance v0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {v0, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object v0
.end method

.method private static a(Lcom/googlecode/leptonica/android/Pix;FZ)Lcom/googlecode/leptonica/android/Pix;
    .locals 2

    if-nez p0, :cond_0

    .line 86
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v0

    const/4 p0, 0x1

    invoke-static {v0, v1, p1, p2, p0}, Lcom/googlecode/leptonica/android/Rotate;->nativeRotate(JFZZ)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-nez p2, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 94
    :cond_1
    new-instance p2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p2, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p2
.end method

.method private static a(Lcom/googlecode/leptonica/android/Pix;I)Lcom/googlecode/leptonica/android/Pix;
    .locals 2

    if-nez p0, :cond_0

    .line 106
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-ltz p1, :cond_3

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/googlecode/leptonica/android/Rotate;->nativeRotateOrth(JI)I

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 115
    :cond_2
    new-instance p1, Lcom/googlecode/leptonica/android/Pix;

    int-to-long v0, p0

    invoke-direct {p1, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p1

    .line 108
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "quads not in {0,1,2,3}"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Lcom/googlecode/leptonica/android/Pix;F)Lcom/googlecode/leptonica/android/Pix;
    .locals 3

    if-nez p0, :cond_0

    .line 2086
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2088
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v0

    const/4 p0, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, p0, v2}, Lcom/googlecode/leptonica/android/Rotate;->nativeRotate(JFZZ)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 2094
    :cond_1
    new-instance v0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {v0, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object v0
.end method

.method private static native nativeRotate(JFZZ)J
.end method

.method private static native nativeRotateOrth(JI)I
.end method

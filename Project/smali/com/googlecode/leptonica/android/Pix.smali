.class public Lcom/googlecode/leptonica/android/Pix;
.super Ljava/lang/Object;
.source "Pix.java"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2


# instance fields
.field final d:J

.field e:Z


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

.method private constructor <init>(III)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_2

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x4

    if-eq p3, v0, :cond_1

    const/16 v0, 0x8

    if-eq p3, v0, :cond_1

    const/16 v0, 0x10

    if-eq p3, v0, :cond_1

    const/16 v0, 0x18

    if-eq p3, v0, :cond_1

    const/16 v0, 0x20

    if-eq p3, v0, :cond_1

    .line 63
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Depth must be one of 1, 2, 4, 8, 16, or 32"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/googlecode/leptonica/android/Pix;->nativeCreatePix(III)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    const/4 p1, 0x0

    .line 67
    iput-boolean p1, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    return-void

    .line 60
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Pix width and height must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide p1, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    return-void
.end method

.method private a(II)I
    .locals 2

    .line 279
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    if-eqz v0, :cond_0

    .line 280
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_0
    if-ltz p1, :cond_4

    .line 282
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->c()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_1

    :cond_1
    if-ltz p2, :cond_3

    .line 284
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->d()I

    move-result v0

    if-lt p2, v0, :cond_2

    goto :goto_0

    .line 288
    :cond_2
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    invoke-static {v0, v1, p1, p2}, Lcom/googlecode/leptonica/android/Pix;->nativeGetPixel(JII)I

    move-result p1

    return p1

    .line 285
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Supplied y coordinate exceeds image bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 283
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Supplied x coordinate exceeds image bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a([BIII)Lcom/googlecode/leptonica/android/Pix;
    .locals 1

    .line 208
    invoke-static {p0, p1, p2, p3}, Lcom/googlecode/leptonica/android/Pix;->nativeCreateFromData([BIII)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    .line 211
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0

    .line 214
    :cond_0
    new-instance p2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p2, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p2
.end method

.method private a(III)V
    .locals 2

    .line 301
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    if-eqz v0, :cond_0

    .line 302
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_0
    if-ltz p1, :cond_4

    .line 304
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->c()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_1

    :cond_1
    if-ltz p2, :cond_3

    .line 306
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->d()I

    move-result v0

    if-lt p2, v0, :cond_2

    goto :goto_0

    .line 310
    :cond_2
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/googlecode/leptonica/android/Pix;->nativeSetPixel(JIII)V

    return-void

    .line 307
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Supplied y coordinate exceeds image bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 305
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Supplied x coordinate exceeds image bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a([I)Z
    .locals 2

    .line 129
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    if-eqz v0, :cond_0

    .line 130
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 132
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    invoke-static {v0, v1, p1}, Lcom/googlecode/leptonica/android/Pix;->nativeGetDimensions(J[I)Z

    move-result p1

    return p1
.end method

.method private f()[B
    .locals 2

    .line 90
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 93
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeGetData(J)[B

    move-result-object v0

    if-nez v0, :cond_1

    .line 96
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "native getData failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0
.end method

.method private g()[I
    .locals 3

    .line 109
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x3

    .line 112
    new-array v0, v0, [I

    .line 1129
    iget-boolean v1, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    if-eqz v1, :cond_1

    .line 1130
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1132
    :cond_1
    iget-wide v1, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    invoke-static {v1, v2, v0}, Lcom/googlecode/leptonica/android/Pix;->nativeGetDimensions(J[I)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private h()Lcom/googlecode/leptonica/android/Pix;
    .locals 5

    .line 143
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 146
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeClone(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 149
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    .line 152
    :cond_1
    new-instance v2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {v2, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object v2
.end method

.method private i()Lcom/googlecode/leptonica/android/Pix;
    .locals 5

    .line 162
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    if-eqz v0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 165
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeCopy(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 168
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    .line 171
    :cond_1
    new-instance v2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {v2, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object v2
.end method

.method private j()Z
    .locals 2

    .line 180
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    if-eqz v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 183
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeInvert(J)Z

    move-result v0

    return v0
.end method

.method private k()Landroid/graphics/Rect;
    .locals 4

    .line 223
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->c()I

    move-result v0

    .line 224
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->d()I

    move-result v1

    .line 226
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method private l()I
    .locals 2

    .line 266
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeGetRefCount(J)I

    move-result v0

    return v0
.end method

.method private static native nativeClone(J)J
.end method

.method private static native nativeCopy(J)J
.end method

.method private static native nativeCreateFromData([BIII)J
.end method

.method private static native nativeCreatePix(III)J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetData(J)[B
.end method

.method private static native nativeGetDepth(J)I
.end method

.method static native nativeGetDimensions(J[I)Z
.end method

.method private static native nativeGetHeight(J)I
.end method

.method private static native nativeGetPixel(JII)I
.end method

.method private static native nativeGetRefCount(J)I
.end method

.method private static native nativeGetWidth(J)I
.end method

.method private static native nativeInvert(J)Z
.end method

.method private static native nativeSetPixel(JIII)V
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 77
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 80
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    return-wide v0
.end method

.method public final b()V
    .locals 2

    .line 191
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    if-nez v0, :cond_0

    .line 192
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeDestroy(J)V

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    :cond_0
    return-void
.end method

.method public final c()I
    .locals 2

    .line 235
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    if-eqz v0, :cond_0

    .line 236
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 238
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeGetWidth(J)I

    move-result v0

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1143
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    if-eqz v0, :cond_0

    .line 1144
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1146
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeClone(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 1149
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    .line 1152
    :cond_1
    new-instance v2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {v2, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object v2
.end method

.method public final d()I
    .locals 2

    .line 247
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    if-eqz v0, :cond_0

    .line 248
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 250
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeGetHeight(J)I

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 2

    .line 259
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->e:Z

    if-eqz v0, :cond_0

    .line 260
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 262
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->d:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeGetDepth(J)I

    move-result v0

    return v0
.end method

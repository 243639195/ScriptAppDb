.class public Lcom/googlecode/tesseract/android/PageIterator;
.super Ljava/lang/Object;
.source "PageIterator.java"


# instance fields
.field private final a:J


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

    const-string v0, "tess"

    .line 28
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(J)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Lcom/googlecode/tesseract/android/PageIterator;->a:J

    return-void
.end method

.method private a()V
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/PageIterator;->a:J

    invoke-static {v0, v1}, Lcom/googlecode/tesseract/android/PageIterator;->nativeBegin(J)V

    return-void
.end method

.method private a(I)Z
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/PageIterator;->a:J

    invoke-static {v0, v1, p1}, Lcom/googlecode/tesseract/android/PageIterator;->nativeNext(JI)Z

    move-result p1

    return p1
.end method

.method private b(I)[I
    .locals 2

    .line 94
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/PageIterator;->a:J

    invoke-static {v0, v1, p1}, Lcom/googlecode/tesseract/android/PageIterator;->nativeBoundingBox(JI)[I

    move-result-object p1

    return-object p1
.end method

.method private c(I)Landroid/graphics/Rect;
    .locals 5

    .line 1094
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/PageIterator;->a:J

    invoke-static {v0, v1, p1}, Lcom/googlecode/tesseract/android/PageIterator;->nativeBoundingBox(JI)[I

    move-result-object p1

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    aget v3, p1, v3

    const/4 v4, 0x3

    aget p1, p1, v4

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private static native nativeBegin(J)V
.end method

.method private static native nativeBoundingBox(JI)[I
.end method

.method private static native nativeNext(JI)Z
.end method

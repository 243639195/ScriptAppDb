.class public Lcom/googlecode/leptonica/android/Enhance;
.super Ljava/lang/Object;
.source "Enhance.java"


# static fields
.field public static final a:I = 0x1

.field public static final b:F = 0.3f


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
    .locals 4

    if-nez p0, :cond_0

    .line 1071
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1073
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v0

    const/4 p0, 0x1

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v0, v1, p0, v2}, Lcom/googlecode/leptonica/android/Enhance;->nativeUnsharpMasking(JIF)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_1

    .line 1077
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0

    .line 1080
    :cond_1
    new-instance p0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p0, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p0
.end method

.method private static b(Lcom/googlecode/leptonica/android/Pix;)Lcom/googlecode/leptonica/android/Pix;
    .locals 4

    if-nez p0, :cond_0

    .line 71
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v0

    const/4 p0, 0x1

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v0, v1, p0, v2}, Lcom/googlecode/leptonica/android/Enhance;->nativeUnsharpMasking(JIF)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_1

    .line 77
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0

    .line 80
    :cond_1
    new-instance p0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p0, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p0
.end method

.method private static native nativeUnsharpMasking(JIF)J
.end method

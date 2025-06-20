.class public Lcom/googlecode/tesseract/android/TessPdfRenderer;
.super Ljava/lang/Object;
.source "TessPdfRenderer.java"


# instance fields
.field private final a:J

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "jpgt"

    .line 30
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "pngt"

    .line 31
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "lept"

    .line 32
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "tess"

    .line 33
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/googlecode/tesseract/android/TessBaseAPI;Ljava/lang/String;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1889
    iget-wide v0, p1, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    .line 49
    invoke-static {v0, v1, p2}, Lcom/googlecode/tesseract/android/TessPdfRenderer;->nativeCreate(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/googlecode/tesseract/android/TessPdfRenderer;->a:J

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/googlecode/tesseract/android/TessPdfRenderer;->b:Z

    return-void
.end method

.method private b()V
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessPdfRenderer;->a:J

    invoke-static {v0, v1}, Lcom/googlecode/tesseract/android/TessPdfRenderer;->nativeRecycle(J)V

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/googlecode/tesseract/android/TessPdfRenderer;->b:Z

    return-void
.end method

.method private static native nativeCreate(JLjava/lang/String;)J
.end method

.method private static native nativeRecycle(J)V
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 57
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessPdfRenderer;->b:Z

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 60
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessPdfRenderer;->a:J

    return-wide v0
.end method

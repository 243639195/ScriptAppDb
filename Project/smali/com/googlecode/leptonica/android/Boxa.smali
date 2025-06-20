.class public Lcom/googlecode/leptonica/android/Boxa;
.super Ljava/lang/Object;
.source "Boxa.java"


# static fields
.field private static final a:Ljava/lang/String; = "Boxa"


# instance fields
.field private final b:J

.field private c:Z


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

    return-void
.end method

.method private constructor <init>(J)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->c:Z

    .line 51
    iput-wide p1, p0, Lcom/googlecode/leptonica/android/Boxa;->b:J

    .line 52
    iput-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->c:Z

    return-void
.end method

.method private a()J
    .locals 2

    .line 63
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->c:Z

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 66
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Boxa;->b:J

    return-wide v0
.end method

.method private a(I)Landroid/graphics/Rect;
    .locals 4

    .line 1100
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->c:Z

    if-eqz v0, :cond_0

    .line 1101
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_0
    const/4 v0, 0x4

    .line 1103
    new-array v0, v0, [I

    .line 1121
    iget-boolean v1, p0, Lcom/googlecode/leptonica/android/Boxa;->c:Z

    if-eqz v1, :cond_1

    .line 1122
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1128
    :cond_1
    iget-wide v1, p0, Lcom/googlecode/leptonica/android/Boxa;->b:J

    invoke-static {v1, v2, p1, v0}, Lcom/googlecode/leptonica/android/Boxa;->nativeGetGeometry(JI[I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/4 p1, 0x0

    .line 85
    aget p1, v0, p1

    const/4 v1, 0x1

    .line 86
    aget v1, v0, v1

    const/4 v2, 0x2

    .line 87
    aget v2, v0, v2

    add-int/2addr v2, p1

    const/4 v3, 0x3

    .line 88
    aget v0, v0, v3

    add-int/2addr v0, v1

    .line 89
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p1, v1, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method private a(I[I)Z
    .locals 2

    .line 121
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->c:Z

    if-eqz v0, :cond_0

    .line 122
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 128
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Boxa;->b:J

    invoke-static {v0, v1, p1, p2}, Lcom/googlecode/leptonica/android/Boxa;->nativeGetGeometry(JI[I)Z

    move-result p1

    return p1
.end method

.method private b()I
    .locals 2

    .line 70
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->c:Z

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 73
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Boxa;->b:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Boxa;->nativeGetCount(J)I

    move-result v0

    return v0
.end method

.method private b(I)[I
    .locals 3

    .line 100
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->c:Z

    if-eqz v0, :cond_0

    .line 101
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_0
    const/4 v0, 0x4

    .line 103
    new-array v0, v0, [I

    .line 2121
    iget-boolean v1, p0, Lcom/googlecode/leptonica/android/Boxa;->c:Z

    if-eqz v1, :cond_1

    .line 2122
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 2128
    :cond_1
    iget-wide v1, p0, Lcom/googlecode/leptonica/android/Boxa;->b:J

    invoke-static {v1, v2, p1, v0}, Lcom/googlecode/leptonica/android/Boxa;->nativeGetGeometry(JI[I)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private declared-synchronized c()V
    .locals 2

    monitor-enter p0

    .line 135
    :try_start_0
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->c:Z

    if-nez v0, :cond_0

    .line 136
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Boxa;->b:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Boxa;->nativeDestroy(J)V

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 134
    monitor-exit p0

    throw v0
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetCount(J)I
.end method

.method private static native nativeGetGeometry(JI[I)Z
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 145
    :try_start_0
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->c:Z

    if-nez v0, :cond_0

    .line 146
    sget-object v0, Lcom/googlecode/leptonica/android/Boxa;->a:Ljava/lang/String;

    const-string v1, "Boxa was not terminated using recycle()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0}, Lcom/googlecode/leptonica/android/Boxa;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 151
    throw v0
.end method

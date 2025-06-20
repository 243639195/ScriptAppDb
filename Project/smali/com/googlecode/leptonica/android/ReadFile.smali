.class public Lcom/googlecode/leptonica/android/ReadFile;
.super Ljava/lang/Object;
.source "ReadFile.java"


# static fields
.field private static final a:Ljava/lang/String; = "ReadFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "jpgt"

    .line 32
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "pngt"

    .line 33
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "lept"

    .line 34
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)Lcom/googlecode/leptonica/android/Pix;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 171
    sget-object p0, Lcom/googlecode/leptonica/android/ReadFile;->a:Ljava/lang/String;

    const-string v1, "Bitmap must be non-null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 174
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v1, v2, :cond_1

    .line 175
    sget-object p0, Lcom/googlecode/leptonica/android/ReadFile;->a:Ljava/lang/String;

    const-string v1, "Bitmap config must be ARGB_8888"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 179
    :cond_1
    invoke-static {p0}, Lcom/googlecode/leptonica/android/ReadFile;->nativeReadBitmap(Landroid/graphics/Bitmap;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-nez p0, :cond_2

    .line 182
    sget-object p0, Lcom/googlecode/leptonica/android/ReadFile;->a:Ljava/lang/String;

    const-string v1, "Failed to read pix from bitmap"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 186
    :cond_2
    new-instance p0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p0, v1, v2}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p0
.end method

.method public static a(Ljava/io/File;)Lcom/googlecode/leptonica/android/Pix;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 129
    sget-object p0, Lcom/googlecode/leptonica/android/ReadFile;->a:Ljava/lang/String;

    const-string v1, "File must be non-null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 132
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    sget-object p0, Lcom/googlecode/leptonica/android/ReadFile;->a:Ljava/lang/String;

    const-string v1, "File does not exist"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 136
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_2

    .line 137
    sget-object p0, Lcom/googlecode/leptonica/android/ReadFile;->a:Ljava/lang/String;

    const-string v1, "Cannot read file"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 141
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/googlecode/leptonica/android/ReadFile;->nativeReadFile(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 144
    new-instance p0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p0, v1, v2}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p0

    .line 147
    :cond_3
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 148
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 150
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_4

    .line 152
    sget-object p0, Lcom/googlecode/leptonica/android/ReadFile;->a:Ljava/lang/String;

    const-string v1, "Cannot decode bitmap"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 155
    :cond_4
    invoke-static {p0}, Lcom/googlecode/leptonica/android/ReadFile;->a(Landroid/graphics/Bitmap;)Lcom/googlecode/leptonica/android/Pix;

    move-result-object v0

    .line 157
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method private static a([B)Lcom/googlecode/leptonica/android/Pix;
    .locals 3

    if-nez p0, :cond_0

    .line 48
    sget-object p0, Lcom/googlecode/leptonica/android/ReadFile;->a:Ljava/lang/String;

    const-string v0, "Image data byte array must be non-null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 53
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    .line 55
    array-length v2, p0

    invoke-static {p0, v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 57
    invoke-static {p0}, Lcom/googlecode/leptonica/android/ReadFile;->a(Landroid/graphics/Bitmap;)Lcom/googlecode/leptonica/android/Pix;

    move-result-object v0

    .line 59
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method private static a([BII)Lcom/googlecode/leptonica/android/Pix;
    .locals 2

    if-nez p0, :cond_0

    .line 74
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Byte array must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-gtz p1, :cond_1

    .line 76
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Image width must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-gtz p2, :cond_2

    .line 78
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Image height must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 79
    :cond_2
    array-length v0, p0

    mul-int v1, p1, p2

    if-ge v0, v1, :cond_3

    .line 80
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array length does not match dimensions"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 82
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/googlecode/leptonica/android/ReadFile;->nativeReadBytes8([BII)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-nez p2, :cond_4

    .line 85
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to read pix from memory"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 87
    :cond_4
    new-instance p2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p2, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p2
.end method

.method private static a(Lcom/googlecode/leptonica/android/Pix;[BII)Z
    .locals 2

    if-nez p0, :cond_0

    .line 102
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-nez p1, :cond_1

    .line 104
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Byte array must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-gtz p2, :cond_2

    .line 106
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Image width must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-gtz p3, :cond_3

    .line 108
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Image height must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 109
    :cond_3
    array-length v0, p1

    mul-int v1, p2, p3

    if-ge v0, v1, :cond_4

    .line 110
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array length does not match dimensions"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 111
    :cond_4
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->c()I

    move-result v0

    if-eq v0, p2, :cond_5

    .line 112
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix width does not match image width"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 113
    :cond_5
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->d()I

    move-result v0

    if-eq v0, p3, :cond_6

    .line 114
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix height does not match image height"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 116
    :cond_6
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/googlecode/leptonica/android/ReadFile;->nativeReplaceBytes8(J[BII)Z

    move-result p0

    return p0
.end method

.method private static native nativeReadBitmap(Landroid/graphics/Bitmap;)J
.end method

.method private static native nativeReadBytes8([BII)J
.end method

.method private static native nativeReadFile(Ljava/lang/String;)J
.end method

.method private static native nativeReadMem([BI)J
.end method

.method private static native nativeReplaceBytes8(J[BII)Z
.end method

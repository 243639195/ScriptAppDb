.class public Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;
.super Ljava/lang/Object;
.source "BitmapDecoder.java"


# static fields
.field private static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3

    .line 173
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 174
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt p0, p1, :cond_1

    if-le v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_3

    :cond_1
    :goto_0
    if-le p0, v0, :cond_2

    int-to-float v1, v0

    int-to-float v2, p2

    div-float/2addr v1, v2

    .line 179
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_1

    :cond_2
    int-to-float v1, p0

    int-to-float v2, p1

    div-float/2addr v1, v2

    .line 181
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_1
    mul-int p0, p0, v0

    int-to-float p0, p0

    mul-int p1, p1, p2

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    :goto_2
    mul-int p2, v1, v1

    int-to-float p2, p2

    div-float p2, p0, p2

    cmpl-float p2, p2, p1

    if-gtz p2, :cond_3

    move p0, v1

    :goto_3
    return p0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static decodeByteArray([B)Landroid/graphics/Bitmap;
    .locals 4

    .line 159
    sget-object v0, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 161
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 162
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 164
    :try_start_1
    array-length v3, p0

    invoke-static {p0, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p0

    .line 166
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    .line 159
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 131
    sget-object v0, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 133
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 134
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :try_start_1
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p0

    .line 138
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    .line 131
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 3

    .line 145
    sget-object v0, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 147
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 148
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 150
    :try_start_1
    invoke-static {p0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p0

    .line 152
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    .line 145
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 3

    .line 117
    sget-object v0, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 119
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 120
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :try_start_1
    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p0

    .line 124
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    .line 117
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static decodeSampledBitmapFromByteArray([BLcom/lidroid/xutils/bitmap/core/BitmapSize;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 4

    .line 96
    sget-object v0, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 98
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 99
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 100
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 101
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 102
    invoke-virtual {p1}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getHeight()I

    move-result p1

    invoke-static {v1, v2, p1}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 103
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz p2, :cond_0

    .line 105
    iput-object p2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_0
    :try_start_1
    array-length p1, p0

    invoke-static {p0, v3, p1, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p0

    .line 110
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    .line 96
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static decodeSampledBitmapFromDescriptor(Ljava/io/FileDescriptor;Lcom/lidroid/xutils/bitmap/core/BitmapSize;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 4

    .line 75
    sget-object v0, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 77
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 78
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 79
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    const/4 v2, 0x0

    .line 80
    invoke-static {p0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 81
    invoke-virtual {p1}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getHeight()I

    move-result p1

    invoke-static {v1, v3, p1}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    .line 82
    iput-boolean p1, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz p2, :cond_0

    .line 84
    iput-object p2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    :try_start_1
    invoke-static {p0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p0

    .line 89
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    .line 75
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static decodeSampledBitmapFromFile(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/core/BitmapSize;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 3

    .line 54
    sget-object v0, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 55
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 56
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 57
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 58
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 59
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 60
    invoke-virtual {p1}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getHeight()I

    move-result p1

    invoke-static {v1, v2, p1}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz p2, :cond_0

    .line 63
    iput-object p2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    :try_start_1
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    .line 54
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static decodeSampledBitmapFromResource(Landroid/content/res/Resources;ILcom/lidroid/xutils/bitmap/core/BitmapSize;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 3

    .line 33
    sget-object v0, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 34
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 35
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 36
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 37
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 38
    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 39
    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getHeight()I

    move-result p2

    invoke-static {v1, v2, p2}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p2

    iput p2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p2, 0x0

    .line 40
    iput-boolean p2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz p3, :cond_0

    .line 42
    iput-object p3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_0
    :try_start_1
    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

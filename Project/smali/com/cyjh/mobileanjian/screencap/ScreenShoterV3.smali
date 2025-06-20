.class public final Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;
.super Ljava/lang/Object;
.source "ScreenShoterV3.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ScreenShoterV3"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/media/projection/MediaProjection;

.field private d:Ljava/lang/Object;

.field private e:Landroid/os/HandlerThread;

.field private f:Landroid/os/Handler;

.field private g:Landroid/content/Intent;

.field private h:Landroid/media/ImageReader;

.field private i:Landroid/hardware/display/VirtualDisplay;

.field private j:Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;

.field private k:Landroid/graphics/Bitmap;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private volatile r:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->p:Z

    .line 52
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->q:Z

    .line 53
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->r:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;-><init>()V

    return-void
.end method

.method private a(II)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->h:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    if-nez v0, :cond_0

    .line 171
    iget-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->k:Landroid/graphics/Bitmap;

    return-object p1

    .line 173
    :cond_0
    invoke-static {v0, p1, p2}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->a(Landroid/media/Image;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 174
    iput-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->k:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Landroid/media/Image;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-static {p0, v0, v0}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->a(Landroid/media/Image;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/media/Image;II)Landroid/graphics/Bitmap;
    .locals 8

    .line 183
    :try_start_0
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v0

    .line 184
    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v1

    .line 185
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v3, 0x0

    .line 186
    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 187
    aget-object v5, v2, v3

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v5

    .line 188
    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    mul-int v6, v5, v0

    sub-int/2addr v2, v6

    .line 190
    div-int/2addr v2, v5

    add-int/2addr v2, v0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 191
    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    if-le v0, v1, :cond_0

    if-eqz v2, :cond_0

    .line 195
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x42b40000    # 90.0f

    .line 196
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/4 v5, 0x2

    div-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/2addr v6, v5

    int-to-float v6, v6

    invoke-virtual {v0, v1, v4, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 198
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/16 v4, 0x9

    .line 200
    new-array v4, v4, [F

    .line 201
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 202
    aget v5, v4, v5

    const/4 v6, 0x5

    .line 203
    aget v4, v4, v6

    sub-float/2addr v1, v5

    const/4 v5, 0x0

    sub-float/2addr v5, v4

    .line 204
    invoke-virtual {v0, v1, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 205
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 206
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 207
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 208
    invoke-virtual {v5, v2, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 209
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, v2

    :goto_0
    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v7

    goto :goto_2

    .line 216
    :cond_2
    :goto_1
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 217
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const-string v1, "ScreenShoterV3"

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "load bitmap info return  1 width="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " height = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    add-int/lit8 v3, p1, 0x0

    mul-int/lit8 p1, p2, 0x2

    sub-int v4, v0, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move v2, p2

    .line 219
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 220
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 223
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 224
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const-string v1, "ScreenShoterV3"

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load bitmap info return  2 width="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " height = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_3

    .line 231
    invoke-virtual {p0}, Landroid/media/Image;->close()V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/media/Image;->close()V

    .line 233
    :cond_4
    throw p1

    :catch_0
    if-eqz p0, :cond_5

    .line 231
    invoke-virtual {p0}, Landroid/media/Image;->close()V

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->k:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private a()Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->h:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->j:Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;

    return-object v0

    .line 134
    :cond_0
    invoke-direct {p0, v0}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->b(Landroid/media/Image;)Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;

    move-result-object v0

    .line 135
    iput-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->j:Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;

    return-object v0
.end method

.method static synthetic a(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;Landroid/media/Image;)Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->b(Landroid/media/Image;)Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;)Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->j:Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;

    return-object p1
.end method

.method static synthetic a(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->p:Z

    return p0
.end method

.method static synthetic a(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->r:Z

    return p1
.end method

.method static synthetic b(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;)Landroid/media/ImageReader;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->h:Landroid/media/ImageReader;

    return-object p0
.end method

.method private b(Landroid/media/Image;)Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;
    .locals 7

    .line 290
    :try_start_0
    new-instance v0, Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;

    invoke-direct {v0}, Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;-><init>()V

    .line 291
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v1

    .line 292
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v2

    .line 293
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    const/4 v4, 0x0

    .line 294
    aget-object v5, v3, v4

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 295
    aget-object v6, v3, v4

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v6

    .line 296
    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v3

    .line 297
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    new-array v4, v4, [B

    .line 298
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 299
    iput v1, v0, Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;->width:I

    .line 300
    iput v2, v0, Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;->height:I

    .line 301
    iget v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->o:I

    iput v1, v0, Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;->rotation:I

    .line 302
    iput v6, v0, Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;->rowStride:I

    .line 303
    iput v3, v0, Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;->pixelStride:I

    .line 304
    iput-object v4, v0, Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;->data:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 310
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 312
    :cond_1
    throw v0

    :catch_0
    if-eqz p1, :cond_2

    .line 310
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private declared-synchronized b()V
    .locals 12

    monitor-enter p0

    .line 317
    :try_start_0
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->recycler()V

    .line 318
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->updateScreenSize()V

    .line 319
    iget-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->b:Landroid/content/Context;

    const-string v1, "media_projection"

    .line 320
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    .line 322
    iget-object v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->c:Landroid/media/projection/MediaProjection;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 323
    iget-object v2, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->g:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->c:Landroid/media/projection/MediaProjection;

    .line 325
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "imageReaderHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->e:Landroid/os/HandlerThread;

    .line 326
    iget-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 327
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->f:Landroid/os/Handler;

    const-string v0, "getprop phone.id"

    .line 329
    invoke-static {v0}, Lcom/cyjh/mq/d/e;->a(Ljava/lang/String;)Lcom/cyjh/mq/d/e$a;

    move-result-object v0

    .line 330
    iget-object v1, v0, Lcom/cyjh/mq/d/e$a;->b:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/cyjh/mq/d/e$a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 331
    iget v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->l:I

    iget v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->m:I

    const/4 v4, 0x2

    invoke-static {v0, v1, v4, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->h:Landroid/media/ImageReader;

    goto :goto_0

    .line 333
    :cond_1
    iget v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->l:I

    iget v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->m:I

    invoke-static {v0, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->h:Landroid/media/ImageReader;

    .line 336
    :goto_0
    iget-object v3, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->c:Landroid/media/projection/MediaProjection;

    const-string v4, "screen-mirror"

    iget v5, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->l:I

    iget v6, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->m:I

    iget v7, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->n:I

    const/16 v8, 0x10

    iget-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->h:Landroid/media/ImageReader;

    .line 339
    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 336
    invoke-virtual/range {v3 .. v11}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->i:Landroid/hardware/display/VirtualDisplay;

    .line 341
    iput-boolean v2, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->p:Z

    .line 342
    iget-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->h:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    .line 343
    iget-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->h:Landroid/media/ImageReader;

    new-instance v1, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$1;

    invoke-direct {v1, p0}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$1;-><init>(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;)V

    iget-object v2, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 316
    monitor-exit p0

    throw v0
.end method

.method private c()Z
    .locals 1

    .line 372
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->r:Z

    return v0
.end method

.method static synthetic c(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;)Z
    .locals 1

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->p:Z

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;
    .locals 2

    const-class v0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    monitor-enter v0

    .line 63
    :try_start_0
    invoke-static {}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$a;->a()Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final init(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->q:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->q:Z

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->b:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->g:Landroid/content/Intent;

    .line 77
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->n:I

    :cond_0
    return-void
.end method

.method public final init(Landroid/content/Context;Landroid/content/Intent;Landroid/media/projection/MediaProjection;)V
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->q:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->q:Z

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->b:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->g:Landroid/content/Intent;

    .line 91
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->n:I

    .line 92
    iput-object p3, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->c:Landroid/media/projection/MediaProjection;

    :cond_0
    return-void
.end method

.method public final isInited()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->q:Z

    return v0
.end method

.method public final obtainScreenShotImage()Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;
    .locals 4

    .line 1372
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->r:Z

    if-eqz v0, :cond_0

    .line 108
    :try_start_0
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->a()Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 111
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_1
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->b()V

    const/4 v1, 0x0

    .line 2372
    :goto_0
    iget-boolean v2, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->r:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_1

    const-wide/16 v2, 0x14

    .line 119
    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v2

    .line 121
    :try_start_3
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 124
    :cond_1
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->a()Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 126
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public final obtainScreenShotImageReturnBitmap(II)Landroid/graphics/Bitmap;
    .locals 4

    .line 3372
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->r:Z

    if-eqz v0, :cond_0

    .line 147
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->a(II)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 150
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_1
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->b()V

    const/4 v1, 0x0

    .line 4372
    :goto_0
    iget-boolean v2, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->r:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_1

    const-wide/16 v2, 0x14

    .line 158
    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v2

    .line 160
    :try_start_3
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 163
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->a(II)Landroid/graphics/Bitmap;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 165
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final recycler()V
    .locals 3

    const/4 v0, 0x0

    .line 258
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->r:Z

    .line 259
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->p:Z

    .line 260
    iput v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->m:I

    .line 261
    iput v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->l:I

    .line 262
    iput v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->o:I

    .line 263
    iget-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->e:Landroid/os/HandlerThread;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 266
    iput-object v2, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->e:Landroid/os/HandlerThread;

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->f:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 269
    iget-object v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->f:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 270
    iput-object v2, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->f:Landroid/os/Handler;

    .line 272
    :cond_1
    iget-object v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->c:Landroid/media/projection/MediaProjection;

    if-eqz v1, :cond_2

    .line 273
    iget-object v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->c:Landroid/media/projection/MediaProjection;

    invoke-virtual {v1}, Landroid/media/projection/MediaProjection;->stop()V

    .line 274
    iput-object v2, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->c:Landroid/media/projection/MediaProjection;

    .line 276
    :cond_2
    iget-object v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->i:Landroid/hardware/display/VirtualDisplay;

    if-eqz v1, :cond_3

    .line 277
    iget-object v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->i:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 278
    iput-object v2, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->i:Landroid/hardware/display/VirtualDisplay;

    .line 280
    :cond_3
    iget-object v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->h:Landroid/media/ImageReader;

    if-eqz v1, :cond_4

    .line 281
    iget-object v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->h:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 282
    iput-object v2, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->h:Landroid/media/ImageReader;

    .line 284
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final updateScreenSize()V
    .locals 5

    .line 239
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->q:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 242
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->r:Z

    .line 243
    iget-object v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/cyjh/mobileanjian/screencap/a;->a(Landroid/content/Context;)[I

    move-result-object v1

    .line 244
    aget v2, v1, v0

    const/4 v3, 0x1

    .line 245
    aget v1, v1, v3

    .line 246
    iget-object v3, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->b:Landroid/content/Context;

    if-eqz v3, :cond_1

    const-string v4, "window"

    .line 5070
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    if-eqz v3, :cond_1

    .line 5072
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 246
    :cond_1
    iput v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->o:I

    .line 247
    iget v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->l:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->m:I

    if-eq v0, v1, :cond_3

    .line 248
    :cond_2
    iput v2, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->l:I

    .line 249
    iput v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->m:I

    :cond_3
    return-void
.end method

.class final Lcom/ds/daisi/zbar/decode/DecodeHandler;
.super Landroid/os/Handler;
.source "DecodeHandler.java"


# instance fields
.field activity:Lcom/ds/daisi/activity/SweepCodeActivity;


# direct methods
.method constructor <init>(Lcom/ds/daisi/activity/SweepCodeActivity;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/ds/daisi/zbar/decode/DecodeHandler;->activity:Lcom/ds/daisi/activity/SweepCodeActivity;

    .line 24
    iput-object p1, p0, Lcom/ds/daisi/zbar/decode/DecodeHandler;->activity:Lcom/ds/daisi/activity/SweepCodeActivity;

    return-void
.end method

.method private decode([BII)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v11, p2

    move/from16 v12, p3

    .line 40
    array-length v3, v2

    new-array v13, v3, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v12, :cond_1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v11, :cond_0

    mul-int v6, v5, v12

    add-int/2addr v6, v12

    sub-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x1

    mul-int v7, v4, v11

    add-int/2addr v7, v5

    .line 43
    aget-byte v7, v2, v7

    aput-byte v7, v13, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 50
    :cond_1
    new-instance v2, Lcom/zbar/lib/ZbarManager;

    invoke-direct {v2}, Lcom/zbar/lib/ZbarManager;-><init>()V

    const/4 v6, 0x1

    .line 51
    iget-object v3, v1, Lcom/ds/daisi/zbar/decode/DecodeHandler;->activity:Lcom/ds/daisi/activity/SweepCodeActivity;

    .line 52
    invoke-virtual {v3}, Lcom/ds/daisi/activity/SweepCodeActivity;->getX()I

    move-result v7

    iget-object v3, v1, Lcom/ds/daisi/zbar/decode/DecodeHandler;->activity:Lcom/ds/daisi/activity/SweepCodeActivity;

    invoke-virtual {v3}, Lcom/ds/daisi/activity/SweepCodeActivity;->getY()I

    move-result v8

    iget-object v3, v1, Lcom/ds/daisi/zbar/decode/DecodeHandler;->activity:Lcom/ds/daisi/activity/SweepCodeActivity;

    invoke-virtual {v3}, Lcom/ds/daisi/activity/SweepCodeActivity;->getCropWidth()I

    move-result v9

    iget-object v3, v1, Lcom/ds/daisi/zbar/decode/DecodeHandler;->activity:Lcom/ds/daisi/activity/SweepCodeActivity;

    .line 53
    invoke-virtual {v3}, Lcom/ds/daisi/activity/SweepCodeActivity;->getCropHeight()I

    move-result v10

    move-object v3, v13

    move v4, v12

    move v5, v11

    .line 51
    invoke-virtual/range {v2 .. v10}, Lcom/zbar/lib/ZbarManager;->decode([BIIZIIII)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 56
    iget-object v2, v1, Lcom/ds/daisi/zbar/decode/DecodeHandler;->activity:Lcom/ds/daisi/activity/SweepCodeActivity;

    invoke-virtual {v2}, Lcom/ds/daisi/activity/SweepCodeActivity;->isNeedCapture()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 58
    new-instance v15, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;

    iget-object v2, v1, Lcom/ds/daisi/zbar/decode/DecodeHandler;->activity:Lcom/ds/daisi/activity/SweepCodeActivity;

    .line 59
    invoke-virtual {v2}, Lcom/ds/daisi/activity/SweepCodeActivity;->getX()I

    move-result v6

    iget-object v2, v1, Lcom/ds/daisi/zbar/decode/DecodeHandler;->activity:Lcom/ds/daisi/activity/SweepCodeActivity;

    .line 60
    invoke-virtual {v2}, Lcom/ds/daisi/activity/SweepCodeActivity;->getY()I

    move-result v7

    iget-object v2, v1, Lcom/ds/daisi/zbar/decode/DecodeHandler;->activity:Lcom/ds/daisi/activity/SweepCodeActivity;

    invoke-virtual {v2}, Lcom/ds/daisi/activity/SweepCodeActivity;->getCropWidth()I

    move-result v8

    iget-object v2, v1, Lcom/ds/daisi/zbar/decode/DecodeHandler;->activity:Lcom/ds/daisi/activity/SweepCodeActivity;

    .line 61
    invoke-virtual {v2}, Lcom/ds/daisi/activity/SweepCodeActivity;->getCropHeight()I

    move-result v9

    const/4 v10, 0x0

    move-object v2, v15

    move-object v3, v13

    move v4, v12

    move v5, v11

    invoke-direct/range {v2 .. v10}, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    .line 62
    invoke-virtual {v15}, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->renderThumbnail()[I

    move-result-object v16

    .line 63
    invoke-virtual {v15}, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->getThumbnailWidth()I

    move-result v19

    .line 64
    invoke-virtual {v15}, Lcom/ds/daisi/zbar/lib/PlanarYUVLuminanceSource;->getThumbnailHeight()I

    move-result v20

    const/16 v17, 0x0

    .line 65
    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v18, v19

    invoke-static/range {v16 .. v21}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 68
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 69
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/Qrcode/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 70
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 72
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 74
    :cond_2
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Qrcode.jpg"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 76
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 78
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 80
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 81
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 82
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 83
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 85
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 89
    :cond_4
    :goto_2
    iget-object v2, v1, Lcom/ds/daisi/zbar/decode/DecodeHandler;->activity:Lcom/ds/daisi/activity/SweepCodeActivity;

    invoke-virtual {v2}, Lcom/ds/daisi/activity/SweepCodeActivity;->getHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 90
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 91
    iput-object v14, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const v3, 0x7f100007

    .line 92
    iput v3, v2, Landroid/os/Message;->what:I

    .line 93
    iget-object v3, v1, Lcom/ds/daisi/zbar/decode/DecodeHandler;->activity:Lcom/ds/daisi/activity/SweepCodeActivity;

    invoke-virtual {v3}, Lcom/ds/daisi/activity/SweepCodeActivity;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 96
    :cond_5
    iget-object v2, v1, Lcom/ds/daisi/zbar/decode/DecodeHandler;->activity:Lcom/ds/daisi/activity/SweepCodeActivity;

    invoke-virtual {v2}, Lcom/ds/daisi/activity/SweepCodeActivity;->getHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 97
    iget-object v2, v1, Lcom/ds/daisi/zbar/decode/DecodeHandler;->activity:Lcom/ds/daisi/activity/SweepCodeActivity;

    invoke-virtual {v2}, Lcom/ds/daisi/activity/SweepCodeActivity;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v3, 0x7f100006

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 29
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f100005

    if-eq v0, v1, :cond_1

    const p1, 0x7f100014

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, p1}, Lcom/ds/daisi/zbar/decode/DecodeHandler;->decode([BII)V

    :goto_0
    return-void
.end method

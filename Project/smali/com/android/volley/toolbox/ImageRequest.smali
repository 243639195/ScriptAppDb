.class public Lcom/android/volley/toolbox/ImageRequest;
.super Lcom/android/volley/Request;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/ImageRequest$Transformation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final IMAGE_BACKOFF_MULT:F = 2.0f

.field private static final IMAGE_MAX_RETRIES:I = 0x2

.field private static final IMAGE_TIMEOUT_MS:I = 0x3e8

.field private static final sDecodeLock:Ljava/lang/Object;


# instance fields
.field private final mDecodeConfig:Landroid/graphics/Bitmap$Config;

.field private final mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxHeight:I

.field private final mMaxWidth:I

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mTransformation:Lcom/android/volley/toolbox/ImageRequest$Transformation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/volley/toolbox/ImageRequest;->sDecodeLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 87
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/volley/toolbox/ImageRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/android/volley/toolbox/ImageRequest$Transformation;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/widget/ImageView$ScaleType;",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    .line 110
    invoke-direct/range {v0 .. v8}, Lcom/android/volley/toolbox/ImageRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/android/volley/toolbox/ImageRequest$Transformation;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/android/volley/toolbox/ImageRequest$Transformation;Lcom/android/volley/Response$ErrorListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/widget/ImageView$ScaleType;",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/android/volley/toolbox/ImageRequest$Transformation;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, v0, p1, p8}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 135
    new-instance p1, Lcom/android/volley/DefaultRetryPolicy;

    const/16 p8, 0x3e8

    const/4 v0, 0x2

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p1, p8, v0, v1}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/ImageRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 136
    iput-object p2, p0, Lcom/android/volley/toolbox/ImageRequest;->mListener:Lcom/android/volley/Response$Listener;

    .line 137
    iput-object p6, p0, Lcom/android/volley/toolbox/ImageRequest;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    .line 138
    iput p3, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxWidth:I

    .line 139
    iput p4, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxHeight:I

    .line 140
    iput-object p5, p0, Lcom/android/volley/toolbox/ImageRequest;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 141
    iput-object p7, p0, Lcom/android/volley/toolbox/ImageRequest;->mTransformation:Lcom/android/volley/toolbox/ImageRequest$Transformation;

    return-void
.end method

.method private doParse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 221
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    .line 222
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 224
    iget v2, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxWidth:I

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxHeight:I

    if-nez v2, :cond_0

    .line 225
    iget-object v2, p0, Lcom/android/volley/toolbox/ImageRequest;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 226
    array-length v2, v0

    invoke-static {v0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 229
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 230
    array-length v4, v0

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 231
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 232
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 235
    iget v6, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxWidth:I

    iget v7, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxHeight:I

    iget-object v8, p0, Lcom/android/volley/toolbox/ImageRequest;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-static {v6, v7, v4, v5, v8}, Lcom/android/volley/toolbox/ImageRequest;->getResizedDimension(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v6

    .line 237
    iget v7, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxHeight:I

    iget v8, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxWidth:I

    iget-object v9, p0, Lcom/android/volley/toolbox/ImageRequest;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-static {v7, v8, v5, v4, v9}, Lcom/android/volley/toolbox/ImageRequest;->getResizedDimension(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v7

    .line 241
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 245
    invoke-static {v4, v5, v6, v7}, Lcom/android/volley/toolbox/ImageRequest;->findBestSampleSize(IIII)I

    move-result v4

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 246
    array-length v4, v0

    .line 247
    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    if-lez v6, :cond_2

    if-lez v7, :cond_2

    .line 251
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v1, v6, :cond_1

    .line 252
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v1, v7, :cond_2

    .line 253
    :cond_1
    invoke-static {v0, v6, v7, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 255
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 262
    new-instance v0, Lcom/android/volley/ParseError;

    invoke-direct {v0, p1}, Lcom/android/volley/ParseError;-><init>(Lcom/android/volley/NetworkResponse;)V

    invoke-static {v0}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1

    .line 264
    :cond_3
    iget-object v1, p0, Lcom/android/volley/toolbox/ImageRequest;->mTransformation:Lcom/android/volley/toolbox/ImageRequest$Transformation;

    if-eqz v1, :cond_4

    .line 265
    iget-object v1, p0, Lcom/android/volley/toolbox/ImageRequest;->mTransformation:Lcom/android/volley/toolbox/ImageRequest$Transformation;

    iget v2, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxWidth:I

    iget v3, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxHeight:I

    invoke-interface {v1, v0, v2, v3}, Lcom/android/volley/toolbox/ImageRequest$Transformation;->transform(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 266
    :cond_4
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1
.end method

.method static findBestSampleSize(IIII)I
    .locals 4

    int-to-double v0, p0

    int-to-double v2, p2

    div-double/2addr v0, v2

    int-to-double p0, p1

    int-to-double p2, p3

    div-double/2addr p0, p2

    .line 289
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    const/high16 p3, 0x40000000    # 2.0f

    mul-float p3, p3, p2

    float-to-double v0, p3

    cmpg-double v2, v0, p0

    if-gtz v2, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    float-to-int p0, p2

    return p0
.end method

.method private static getResizedDimension(IIIILandroid/widget/ImageView$ScaleType;)I
    .locals 4

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return p2

    .line 170
    :cond_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v0, :cond_2

    if-nez p0, :cond_1

    return p2

    :cond_1
    return p0

    :cond_2
    if-nez p0, :cond_3

    int-to-double p0, p1

    int-to-double p3, p3

    div-double/2addr p0, p3

    int-to-double p2, p2

    mul-double p2, p2, p0

    double-to-int p0, p2

    return p0

    :cond_3
    if-nez p1, :cond_4

    return p0

    :cond_4
    int-to-double v0, p3

    int-to-double p2, p2

    div-double/2addr v0, p2

    .line 191
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p4, p2, :cond_6

    int-to-double p2, p0

    mul-double p2, p2, v0

    int-to-double v2, p1

    cmpg-double p1, p2, v2

    if-gez p1, :cond_5

    div-double/2addr v2, v0

    double-to-int p0, v2

    :cond_5
    return p0

    :cond_6
    int-to-double p2, p0

    mul-double p2, p2, v0

    int-to-double v2, p1

    cmpl-double p1, p2, v2

    if-lez p1, :cond_7

    div-double/2addr v2, v0

    double-to-int p0, v2

    :cond_7
    return p0
.end method


# virtual methods
.method protected deliverResponse(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageRequest;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/ImageRequest;->deliverResponse(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .line 146
    sget-object v0, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 207
    sget-object v0, Lcom/android/volley/toolbox/ImageRequest;->sDecodeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/ImageRequest;->doParse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Caught OOM for %d byte image, url=%s"

    const/4 v3, 0x2

    .line 211
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object p1, p1, Lcom/android/volley/NetworkResponse;->data:[B

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    invoke-virtual {p0}, Lcom/android/volley/toolbox/ImageRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    invoke-static {v2, v3}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    new-instance p1, Lcom/android/volley/ParseError;

    invoke-direct {p1, v1}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 214
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

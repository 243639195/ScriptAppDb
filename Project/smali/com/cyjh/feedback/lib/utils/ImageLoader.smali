.class public Lcom/cyjh/feedback/lib/utils/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/feedback/lib/utils/ImageLoader$ImageSize;,
        Lcom/cyjh/feedback/lib/utils/ImageLoader$ImageHolder;,
        Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;
    }
.end annotation


# static fields
.field private static final DEFAULT_COUNT:I = 0x3

.field private static final DEFAULT_LOAD:I = 0x110

.field private static mImageLoader:Lcom/cyjh/feedback/lib/utils/ImageLoader;


# instance fields
.field private mLruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mPoolThread:Ljava/util/concurrent/ExecutorService;

.field private mQueueList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mSemaphoreThreadHandler:Ljava/util/concurrent/Semaphore;

.field private mSemaphoreThreadPool:Ljava/util/concurrent/Semaphore;

.field private mThreadBackground:Ljava/lang/Thread;

.field private mThreadHandler:Landroid/os/Handler;

.field private mType:Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;I)V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader;->mSemaphoreThreadHandler:Ljava/util/concurrent/Semaphore;

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/cyjh/feedback/lib/utils/ImageLoader;->init(Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;I)V

    return-void
.end method

.method static synthetic access$002(Lcom/cyjh/feedback/lib/utils/ImageLoader;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader;->mThreadHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$100(Lcom/cyjh/feedback/lib/utils/ImageLoader;)Ljava/lang/Runnable;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/cyjh/feedback/lib/utils/ImageLoader;->getTask()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/cyjh/feedback/lib/utils/ImageLoader;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader;->mPoolThread:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$300(Lcom/cyjh/feedback/lib/utils/ImageLoader;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader;->mSemaphoreThreadPool:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static synthetic access$400(Lcom/cyjh/feedback/lib/utils/ImageLoader;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader;->mSemaphoreThreadHandler:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static synthetic access$500(Lcom/cyjh/feedback/lib/utils/ImageLoader;Landroid/widget/ImageView;)Lcom/cyjh/feedback/lib/utils/ImageLoader$ImageSize;
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/cyjh/feedback/lib/utils/ImageLoader;->getImageViewSize(Landroid/widget/ImageView;)Lcom/cyjh/feedback/lib/utils/ImageLoader$ImageSize;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/cyjh/feedback/lib/utils/ImageLoader;Ljava/lang/String;Lcom/cyjh/feedback/lib/utils/ImageLoader$ImageSize;)Landroid/graphics/Bitmap;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/cyjh/feedback/lib/utils/ImageLoader;->decodeSampleBitmapFormPath(Ljava/lang/String;Lcom/cyjh/feedback/lib/utils/ImageLoader$ImageSize;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/cyjh/feedback/lib/utils/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/cyjh/feedback/lib/utils/ImageLoader;->addBitmapToLruCache(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/cyjh/feedback/lib/utils/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/cyjh/feedback/lib/utils/ImageLoader;->refreshBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method private addBitmapToLruCache(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    .line 229
    invoke-direct {p0, p2}, Lcom/cyjh/feedback/lib/utils/ImageLoader;->getBitmapFromLruCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v0, p2, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private declared-synchronized addTask(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader;->mQueueList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    :try_start_1
    iget-object p1, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader;->mThreadHandler:Landroid/os/Handler;

    if-nez p1, :cond_0

    .line 347
    iget-object p1, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader;->mSemaphoreThreadHandler:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 350
    :try_start_2
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 353
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader;->mThreadHandler:Landroid/os/Handler;

    const/16 v0, 0x110

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 354
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 340
    monitor-exit p0

    throw p1
.end method

.method private calculateInSample(Landroid/graphics/BitmapFactory$Options;Lcom/cyjh/feedback/lib/utils/ImageLoader$ImageSize;)I
    .locals 3

    .line 259
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 260
    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 262
    iget v1, p2, Lcom/cyjh/feedback/lib/utils/ImageLoader$ImageSize;->imageWidth:I

    if-gt v0, v1, :cond_1

    iget v1, p2, Lcom/cyjh/feedback/lib/utils/ImageLoader$ImageSize;->imageHeight:I

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    .line 263
    iget v2, p2, Lcom/cyjh/feedback/lib/utils/ImageLoader$ImageSize;->imageWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float p1, p1

    mul-float p1, p1, v1

    .line 264
    iget p2, p2, Lcom/cyjh/feedback/lib/utils/ImageLoader$ImageSize;->imageHeight:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 265
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_1
    return p1
.end method

.method private decodeSampleBitmapFormPath(Ljava/lang/String;Lcom/cyjh/feedback/lib/utils/ImageLoader$ImageSize;)Landroid/graphics/Bitmap;
    .locals 2

    .line 243
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 244
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 245
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 247
    invoke-direct {p0, v0, p2}, Lcom/cyjh/feedback/lib/utils/ImageLoader;->calculateInSample(Landroid/graphics/BitmapFactory$Options;Lcom/cyjh/feedback/lib/utils/ImageLoader$ImageSize;)I

    move-result p2

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p2, 0x0

    .line 248
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 249
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private getBitmapFromLruCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private getImageViewFiled(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 324
    :try_start_0
    const-class v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    const/4 v1, 0x1

    .line 325
    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 326
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_0

    const p2, 0x7fffffff

    if-ge p1, p2, :cond_0

    move v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 331
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v0
.end method

.method private getImageViewSize(Landroid/widget/ImageView;)Lcom/cyjh/feedback/lib/utils/ImageLoader$ImageSize;
    .locals 4

    .line 275
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 276
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 278
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    if-gtz v2, :cond_0

    .line 281
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    if-gtz v2, :cond_1

    const-string v2, "mMaxWidth"

    .line 286
    invoke-direct {p0, p1, v2}, Lcom/cyjh/feedback/lib/utils/ImageLoader;->getImageViewFiled(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    :cond_1
    if-gtz v2, :cond_2

    .line 290
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 294
    :cond_2
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    if-gtz v3, :cond_3

    .line 297
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_3
    if-gtz v3, :cond_4

    const-string v1, "mMaxHeight"

    .line 302
    invoke-direct {p0, p1, v1}, Lcom/cyjh/feedback/lib/utils/ImageLoader;->getImageViewFiled(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v3

    :cond_4
    if-gtz v3, :cond_5

    .line 306
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 309
    :cond_5
    new-instance p1, Lcom/cyjh/feedback/lib/utils/ImageLoader$ImageSize;

    invoke-direct {p1, p0}, Lcom/cyjh/feedback/lib/utils/ImageLoader$ImageSize;-><init>(Lcom/cyjh/feedback/lib/utils/ImageLoader;)V

    .line 310
    iput v2, p1, Lcom/cyjh/feedback/lib/utils/ImageLoader$ImageSize;->imageWidth:I

    .line 311
    iput v3, p1, Lcom/cyjh/feedback/lib/utils/ImageLoader$ImageSize;->imageHeight:I

    return-object p1
.end method

.method public static getInstance()Lcom/cyjh/feedback/lib/utils/ImageLoader;
    .locals 4

    .line 145
    sget-object v0, Lcom/cyjh/feedback/lib/utils/ImageLoader;->mImageLoader:Lcom/cyjh/feedback/lib/utils/ImageLoader;

    if-nez v0, :cond_1

    .line 146
    const-class v0, Lcom/cyjh/feedback/lib/utils/ImageLoader;

    monitor-enter v0

    .line 147
    :try_start_0
    sget-object v1, Lcom/cyjh/feedback/lib/utils/ImageLoader;->mImageLoader:Lcom/cyjh/feedback/lib/utils/ImageLoader;

    if-nez v1, :cond_0

    .line 148
    new-instance v1, Lcom/cyjh/feedback/lib/utils/ImageLoader;

    sget-object v2, Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;->FILO:Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/cyjh/feedback/lib/utils/ImageLoader;-><init>(Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;I)V

    sput-object v1, Lcom/cyjh/feedback/lib/utils/ImageLoader;->mImageLoader:Lcom/cyjh/feedback/lib/utils/ImageLoader;

    .line 150
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 152
    :cond_1
    :goto_0
    sget-object v0, Lcom/cyjh/feedback/lib/utils/ImageLoader;->mImageLoader:Lcom/cyjh/feedback/lib/utils/ImageLoader;

    return-object v0
.end method

.method public static getInstance(Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;I)Lcom/cyjh/feedback/lib/utils/ImageLoader;
    .locals 2

    .line 156
    sget-object v0, Lcom/cyjh/feedback/lib/utils/ImageLoader;->mImageLoader:Lcom/cyjh/feedback/lib/utils/ImageLoader;

    if-nez v0, :cond_1

    .line 157
    const-class v0, Lcom/cyjh/feedback/lib/utils/ImageLoader;

    monitor-enter v0

    .line 158
    :try_start_0
    sget-object v1, Lcom/cyjh/feedback/lib/utils/ImageLoader;->mImageLoader:Lcom/cyjh/feedback/lib/utils/ImageLoader;

    if-nez v1, :cond_0

    .line 159
    new-instance v1, Lcom/cyjh/feedback/lib/utils/ImageLoader;

    invoke-direct {v1, p0, p1}, Lcom/cyjh/feedback/lib/utils/ImageLoader;-><init>(Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;I)V

    sput-object v1, Lcom/cyjh/feedback/lib/utils/ImageLoader;->mImageLoader:Lcom/cyjh/feedback/lib/utils/ImageLoader;

    .line 161
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 163
    :cond_1
    :goto_0
    sget-object p0, Lcom/cyjh/feedback/lib/utils/ImageLoader;->mImageLoader:Lcom/cyjh/feedback/lib/utils/ImageLoader;

    return-object p0
.end method

.method private getTask()Ljava/lang/Runnable;
    .locals 2

    .line 136
    sget-object v0, Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;->FIFO:Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;

    iget-object v1, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader;->mType:Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;

    if-ne v0, v1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader;->mQueueList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    return-object v0

    .line 138
    :cond_0
    sget-object v0, Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;->FILO:Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;

    iget-object v1, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader;->mType:Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;

    if-ne v0, v1, :cond_1

    .line 139
    iget-object v0, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader;->mQueueList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private init(Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;I)V
    .locals 2

    .line 86
    iput-object p1, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader;->mType:Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;

    .line 87
    new-instance p1, Ljava/util/concurrent/Semaphore;

    invoke-direct {p1, p2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader;->mSemaphoreThreadPool:Ljava/util/concurrent/Semaphore;

    .line 89
    new-instance p1, Lcom/cyjh/feedback/lib/utils/ImageLoader$1;

    invoke-direct {p1, p0}, Lcom/cyjh/feedback/lib/utils/ImageLoader$1;-><init>(Lcom/cyjh/feedback/lib/utils/ImageLoader;)V

    iput-object p1, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader;->mThreadBackground:Ljava/lang/Thread;

    .line 113
    iget-object p1, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader;->mThreadBackground:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 115
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-int p1, v0

    .line 116
    div-int/lit8 p1, p1, 0x8

    .line 117
    new-instance v0, Lcom/cyjh/feedback/lib/utils/ImageLoader$2;

    invoke-direct {v0, p0, p1}, Lcom/cyjh/feedback/lib/utils/ImageLoader$2;-><init>(Lcom/cyjh/feedback/lib/utils/ImageLoader;I)V

    iput-object v0, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader;->mLruCache:Landroid/util/LruCache;

    .line 126
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader;->mQueueList:Ljava/util/LinkedList;

    .line 128
    invoke-static {p2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader;->mPoolThread:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private refreshBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .line 214
    new-instance v0, Lcom/cyjh/feedback/lib/utils/ImageLoader$ImageHolder;

    invoke-direct {v0, p0}, Lcom/cyjh/feedback/lib/utils/ImageLoader$ImageHolder;-><init>(Lcom/cyjh/feedback/lib/utils/ImageLoader;)V

    .line 215
    iput-object p1, v0, Lcom/cyjh/feedback/lib/utils/ImageLoader$ImageHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 216
    iput-object p2, v0, Lcom/cyjh/feedback/lib/utils/ImageLoader$ImageHolder;->path:Ljava/lang/String;

    .line 217
    iput-object p3, v0, Lcom/cyjh/feedback/lib/utils/ImageLoader$ImageHolder;->imageView:Landroid/widget/ImageView;

    .line 218
    iget-object p1, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 219
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 220
    iget-object p2, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public imageLoader(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .line 173
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader;->mUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/cyjh/feedback/lib/utils/ImageLoader$3;

    invoke-direct {v0, p0}, Lcom/cyjh/feedback/lib/utils/ImageLoader$3;-><init>(Lcom/cyjh/feedback/lib/utils/ImageLoader;)V

    iput-object v0, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader;->mUIHandler:Landroid/os/Handler;

    .line 190
    :cond_0
    invoke-direct {p0, p1}, Lcom/cyjh/feedback/lib/utils/ImageLoader;->getBitmapFromLruCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 192
    invoke-direct {p0, v0, p1, p2}, Lcom/cyjh/feedback/lib/utils/ImageLoader;->refreshBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 195
    :cond_1
    new-instance v0, Lcom/cyjh/feedback/lib/utils/ImageLoader$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/cyjh/feedback/lib/utils/ImageLoader$4;-><init>(Lcom/cyjh/feedback/lib/utils/ImageLoader;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cyjh/feedback/lib/utils/ImageLoader;->addTask(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.class Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;
.super Lcom/lidroid/xutils/task/PriorityAsyncTask;
.source "BitmapGlobalConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapCacheManagementTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lidroid/xutils/task/PriorityAsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final MESSAGE_CLEAR:I = 0x4

.field public static final MESSAGE_CLEAR_BY_KEY:I = 0x7

.field public static final MESSAGE_CLEAR_DISK:I = 0x6

.field public static final MESSAGE_CLEAR_DISK_BY_KEY:I = 0x9

.field public static final MESSAGE_CLEAR_MEMORY:I = 0x5

.field public static final MESSAGE_CLEAR_MEMORY_BY_KEY:I = 0x8

.field public static final MESSAGE_CLOSE:I = 0x3

.field public static final MESSAGE_FLUSH:I = 0x2

.field public static final MESSAGE_INIT_DISK_CACHE:I = 0x1

.field public static final MESSAGE_INIT_MEMORY_CACHE:I


# instance fields
.field final synthetic this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;


# direct methods
.method private constructor <init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityAsyncTask;-><init>()V

    .line 258
    sget-object p1, Lcom/lidroid/xutils/task/Priority;->UI_TOP:Lcom/lidroid/xutils/task/Priority;

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->setPriority(Lcom/lidroid/xutils/task/Priority;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;)V
    .locals 0

    .line 257
    invoke-direct {p0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;-><init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->doInBackground([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    if-eqz p1, :cond_5

    .line 263
    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getBitmapCache()Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    const/4 v1, 0x0

    .line 267
    :try_start_0
    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 299
    :pswitch_0
    array-length v1, p1

    if-eq v1, v3, :cond_2

    return-object p1

    .line 300
    :cond_2
    aget-object v1, p1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearDiskCache(Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :pswitch_1
    array-length v1, p1

    if-eq v1, v3, :cond_3

    return-object p1

    .line 296
    :cond_3
    aget-object v1, p1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearMemoryCache(Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :pswitch_2
    array-length v1, p1

    if-eq v1, v3, :cond_4

    return-object p1

    .line 292
    :cond_4
    aget-object v1, p1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearCache(Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :pswitch_3
    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearDiskCache()V

    goto :goto_0

    .line 285
    :pswitch_4
    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearMemoryCache()V

    goto :goto_0

    .line 282
    :pswitch_5
    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearCache()V

    goto :goto_0

    .line 278
    :pswitch_6
    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearMemoryCache()V

    .line 279
    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->close()V

    goto :goto_0

    .line 275
    :pswitch_7
    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->flush()V

    goto :goto_0

    .line 272
    :pswitch_8
    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->initDiskCache()V

    goto :goto_0

    .line 269
    :pswitch_9
    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->initMemoryCache()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 306
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p1

    :cond_5
    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->onPostExecute([Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/Object;)V
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-static {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 315
    :try_start_0
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_0

    return-void

    .line 346
    :pswitch_0
    array-length v0, p1

    if-eq v0, v2, :cond_1

    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-static {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    move-result-object v0

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapCacheListener;->onClearDiskCacheFinished(Ljava/lang/String;)V

    return-void

    .line 342
    :pswitch_1
    array-length v0, p1

    if-eq v0, v2, :cond_2

    return-void

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-static {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    move-result-object v0

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapCacheListener;->onClearMemoryCacheFinished(Ljava/lang/String;)V

    return-void

    .line 338
    :pswitch_2
    array-length v0, p1

    if-eq v0, v2, :cond_3

    return-void

    .line 339
    :cond_3
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-static {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    move-result-object v0

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapCacheListener;->onClearCacheFinished(Ljava/lang/String;)V

    return-void

    .line 335
    :pswitch_3
    iget-object p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-static {p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/lidroid/xutils/bitmap/BitmapCacheListener;->onClearDiskCacheFinished()V

    return-void

    .line 332
    :pswitch_4
    iget-object p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-static {p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/lidroid/xutils/bitmap/BitmapCacheListener;->onClearMemoryCacheFinished()V

    return-void

    .line 329
    :pswitch_5
    iget-object p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-static {p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/lidroid/xutils/bitmap/BitmapCacheListener;->onClearCacheFinished()V

    return-void

    .line 326
    :pswitch_6
    iget-object p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-static {p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/lidroid/xutils/bitmap/BitmapCacheListener;->onCloseCacheFinished()V

    return-void

    .line 323
    :pswitch_7
    iget-object p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-static {p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/lidroid/xutils/bitmap/BitmapCacheListener;->onFlushCacheFinished()V

    return-void

    .line 320
    :pswitch_8
    iget-object p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-static {p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/lidroid/xutils/bitmap/BitmapCacheListener;->onInitDiskFinished()V

    return-void

    .line 317
    :pswitch_9
    iget-object p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-static {p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/lidroid/xutils/bitmap/BitmapCacheListener;->onInitMemoryCacheFinished()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 353
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

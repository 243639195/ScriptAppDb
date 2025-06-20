.class Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;
.super Lorg/wlf/filedownloader/base/BaseDownloadConfigBuilder;
.source "DownloadConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wlf/filedownloader/DownloadConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerBuilder"
.end annotation


# instance fields
.field private mConnectTimeout:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestMethod:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryDownloadTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUrlHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Lorg/wlf/filedownloader/base/BaseDownloadConfigBuilder;-><init>()V

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->mUrlHeaders:Ljava/util/Map;

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->mRetryDownloadTimes:Ljava/util/Map;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->mConnectTimeout:Ljava/util/Map;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->mRequestMethod:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lorg/wlf/filedownloader/DownloadConfiguration$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/wlf/filedownloader/DownloadConfiguration$1;

    .prologue
    .line 150
    invoke-direct {p0}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->mUrlHeaders:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->mRetryDownloadTimes:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->mConnectTimeout:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->mRequestMethod:Ljava/util/Map;

    return-object v0
.end method

.method private addOrReplaceWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "replace"    # Z

    .prologue
    .line 225
    invoke-static {p1}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 226
    iget-object v1, p0, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->mUrlHeaders:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 227
    .local v0, "existHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 228
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "existHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 229
    .restart local v0    # "existHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->mUrlHeaders:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_0
    if-eqz p4, :cond_2

    .line 232
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .end local v0    # "existHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-void

    .line 237
    .restart local v0    # "existHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 238
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-static {}, Lorg/wlf/filedownloader/DownloadConfiguration;->access$100()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "url":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->addOrReplaceWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 182
    return-object p0
.end method

.method protected addHeaderWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->addOrReplaceWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 195
    return-object p0
.end method

.method protected addHeaders(Ljava/util/Map;)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lorg/wlf/filedownloader/DownloadConfiguration;->access$100()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0, v0, p1}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->addHeadersWithUrl(Ljava/lang/String;Ljava/util/Map;)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    .line 253
    return-object p0
.end method

.method protected addHeadersWithUrl(Ljava/lang/String;Ljava/util/Map;)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;"
        }
    .end annotation

    .prologue
    .line 265
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lorg/wlf/filedownloader/util/MapUtil;->isEmpty(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 266
    iget-object v1, p0, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->mUrlHeaders:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 267
    .local v0, "existHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 268
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "existHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 269
    .restart local v0    # "existHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->mUrlHeaders:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 273
    .end local v0    # "existHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-object p0
.end method

.method public build()Lorg/wlf/filedownloader/DownloadConfiguration;
    .locals 2

    .prologue
    .line 373
    new-instance v0, Lorg/wlf/filedownloader/DownloadConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/wlf/filedownloader/DownloadConfiguration;-><init>(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;Lorg/wlf/filedownloader/DownloadConfiguration$1;)V

    return-object v0
.end method

.method public configConnectTimeout(I)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;
    .locals 1
    .param p1, "connectTimeout"    # I

    .prologue
    .line 285
    invoke-static {}, Lorg/wlf/filedownloader/DownloadConfiguration;->access$100()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0, v0, p1}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->configConnectTimeoutWithUrl(Ljava/lang/String;I)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    .line 287
    return-object p0
.end method

.method public bridge synthetic configConnectTimeout(I)Lorg/wlf/filedownloader/base/BaseDownloadConfigBuilder;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->configConnectTimeout(I)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected configConnectTimeoutWithUrl(Ljava/lang/String;I)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "connectTimeout"    # I

    .prologue
    const v2, 0x1d4c0

    const/16 v1, 0x1388

    .line 325
    invoke-static {p1}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 326
    if-lt p2, v1, :cond_0

    if-gt p2, v2, :cond_0

    .line 327
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->mConnectTimeout:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :goto_0
    return-object p0

    .line 328
    :cond_0
    if-le p2, v2, :cond_1

    .line 329
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->mConnectTimeout:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 330
    :cond_1
    if-ge p2, v1, :cond_2

    .line 331
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->mConnectTimeout:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 333
    :cond_2
    invoke-static {}, Lorg/wlf/filedownloader/DownloadConfiguration;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configConnectTimeout \u914d\u7f6e\u8fde\u63a5\u8d85\u65f6\u65f6\u95f4\u5931\u8d25\uff0cconnectTimeout\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 336
    :cond_3
    invoke-static {}, Lorg/wlf/filedownloader/DownloadConfiguration;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configConnectTimeout \u914d\u7f6e\u8fde\u63a5\u8d85\u65f6\u65f6\u95f4\u5931\u8d25\uff0cconnectTimeout\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected configRequestMethod(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;
    .locals 1
    .param p1, "requestMethod"    # Ljava/lang/String;

    .prologue
    .line 347
    invoke-static {}, Lorg/wlf/filedownloader/DownloadConfiguration;->access$100()Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0, v0, p1}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->configRequestMethodWithUrl(Ljava/lang/String;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    .line 349
    return-object p0
.end method

.method protected configRequestMethodWithUrl(Ljava/lang/String;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "requestMethod"    # Ljava/lang/String;

    .prologue
    .line 359
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->mRequestMethod:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    :goto_0
    return-object p0

    .line 362
    :cond_0
    invoke-static {}, Lorg/wlf/filedownloader/DownloadConfiguration;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configRequestMethodWithUrl \u914d\u7f6e\u8bf7\u6c42\u65b9\u6cd5\u5931\u8d25\uff0crequestMethod\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public configRetryDownloadTimes(I)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;
    .locals 1
    .param p1, "retryDownloadTimes"    # I

    .prologue
    .line 278
    invoke-static {}, Lorg/wlf/filedownloader/DownloadConfiguration;->access$100()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0, v0, p1}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->configRetryDownloadTimesWithUrl(Ljava/lang/String;I)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    .line 280
    return-object p0
.end method

.method public bridge synthetic configRetryDownloadTimes(I)Lorg/wlf/filedownloader/base/BaseDownloadConfigBuilder;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->configRetryDownloadTimes(I)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected configRetryDownloadTimesWithUrl(Ljava/lang/String;I)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "retryDownloadTimes"    # I

    .prologue
    const/16 v1, 0xa

    .line 300
    invoke-static {p1}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 301
    if-ltz p2, :cond_0

    if-gt p2, v1, :cond_0

    .line 302
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->mRetryDownloadTimes:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :goto_0
    return-object p0

    .line 303
    :cond_0
    if-le p2, v1, :cond_1

    .line 304
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->mRetryDownloadTimes:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 305
    :cond_1
    if-gez p2, :cond_2

    .line 306
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->mRetryDownloadTimes:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 308
    :cond_2
    invoke-static {}, Lorg/wlf/filedownloader/DownloadConfiguration;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configRetryDownloadTimes \u914d\u7f6e\u4e0b\u8f7d\u5931\u8d25\u91cd\u8bd5\u6b21\u6570\u5931\u8d25\uff0cretryDownloadTimes\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 311
    :cond_3
    invoke-static {}, Lorg/wlf/filedownloader/DownloadConfiguration;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configRetryDownloadTimes \u914d\u7f6e\u4e0b\u8f7d\u5931\u8d25\u91cd\u8bd5\u6b21\u6570\u5931\u8d25\uff0cretryDownloadTimes\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected replaceHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-static {}, Lorg/wlf/filedownloader/DownloadConfiguration;->access$100()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "url":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->addOrReplaceWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 208
    return-object p0
.end method

.method protected replaceHeaderWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 220
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->addOrReplaceWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 221
    return-object p0
.end method

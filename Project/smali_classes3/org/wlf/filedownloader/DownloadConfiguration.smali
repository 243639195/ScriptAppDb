.class public Lorg/wlf/filedownloader/DownloadConfiguration;
.super Ljava/lang/Object;
.source "DownloadConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wlf/filedownloader/DownloadConfiguration$1;,
        Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;,
        Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;,
        Lorg/wlf/filedownloader/DownloadConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_REQUEST_METHOD:Ljava/lang/String; = "GET"

.field private static final NULL_KEY_FOR_URL:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 377
    const-class v0, Lorg/wlf/filedownloader/FileDownloadConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/DownloadConfiguration;->TAG:Ljava/lang/String;

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/wlf/filedownloader/DownloadConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_temp_key_for_null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/DownloadConfiguration;->NULL_KEY_FOR_URL:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)V
    .locals 0
    .param p1, "builder"    # Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    iput-object p1, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    .line 394
    return-void
.end method

.method synthetic constructor <init>(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;Lorg/wlf/filedownloader/DownloadConfiguration$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;
    .param p2, "x1"    # Lorg/wlf/filedownloader/DownloadConfiguration$1;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/DownloadConfiguration;-><init>(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lorg/wlf/filedownloader/DownloadConfiguration;->NULL_KEY_FOR_URL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lorg/wlf/filedownloader/DownloadConfiguration;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initNullKeyForUrlInternal(Ljava/lang/String;Z)V
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "replaceExistWithNullValue"    # Z

    .prologue
    .line 405
    invoke-static {p1}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    if-nez v9, :cond_1

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    iget-object v9, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    invoke-static {v9}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->access$400(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 412
    sget-object v9, Lorg/wlf/filedownloader/DownloadConfiguration;->NULL_KEY_FOR_URL:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lorg/wlf/filedownloader/DownloadConfiguration;->getHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 413
    .local v6, "nullHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/DownloadConfiguration;->getHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 414
    .local v2, "existUrlHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 416
    .local v5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v6}, Lorg/wlf/filedownloader/util/MapUtil;->isEmpty(Ljava/util/Map;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 417
    if-eqz p2, :cond_5

    .line 419
    iget-object v9, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    invoke-static {v9}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->access$400(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 434
    :goto_1
    const-string v9, "wlf"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u521d\u59cb\u5316headers\uff1a"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/wlf/filedownloader/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v9, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    invoke-static {v9}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->access$400(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    .end local v2    # "existUrlHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "nullHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    iget-object v9, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    invoke-static {v9}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->access$500(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 443
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/DownloadConfiguration;->getRetryDownloadTimes(Ljava/lang/String;)I

    move-result v4

    .line 444
    .local v4, "existUrlRetryDownloadTimes":I
    sget-object v9, Lorg/wlf/filedownloader/DownloadConfiguration;->NULL_KEY_FOR_URL:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lorg/wlf/filedownloader/DownloadConfiguration;->getRetryDownloadTimes(Ljava/lang/String;)I

    move-result v8

    .line 446
    .local v8, "retryDownloadTimes":I
    if-eqz p2, :cond_8

    .line 448
    if-eqz v4, :cond_7

    .line 449
    iget-object v9, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    invoke-static {v9}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->access$500(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    iget-object v9, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    invoke-static {v9}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->access$500(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, p1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    .end local v4    # "existUrlRetryDownloadTimes":I
    .end local v8    # "retryDownloadTimes":I
    :cond_3
    :goto_2
    iget-object v9, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    invoke-static {v9}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->access$600(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 471
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/DownloadConfiguration;->getConnectTimeout(Ljava/lang/String;)I

    move-result v1

    .line 472
    .local v1, "existUrlConnectTimeout":I
    sget-object v9, Lorg/wlf/filedownloader/DownloadConfiguration;->NULL_KEY_FOR_URL:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lorg/wlf/filedownloader/DownloadConfiguration;->getConnectTimeout(Ljava/lang/String;)I

    move-result v0

    .line 474
    .local v0, "connectTimeout":I
    if-eqz p2, :cond_a

    .line 476
    const/16 v9, 0x3a98

    if-eq v1, v9, :cond_9

    .line 477
    iget-object v9, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    invoke-static {v9}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->access$600(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    iget-object v9, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    invoke-static {v9}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->access$600(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, p1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    .end local v0    # "connectTimeout":I
    .end local v1    # "existUrlConnectTimeout":I
    :cond_4
    :goto_3
    iget-object v9, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    invoke-static {v9}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->access$700(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 499
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/DownloadConfiguration;->getRequestMethod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 500
    .local v3, "existUrlRequestMethod":Ljava/lang/String;
    sget-object v9, Lorg/wlf/filedownloader/DownloadConfiguration;->NULL_KEY_FOR_URL:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lorg/wlf/filedownloader/DownloadConfiguration;->getRequestMethod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 502
    .local v7, "requestMethod":Ljava/lang/String;
    if-eqz p2, :cond_c

    .line 504
    const-string v9, "GET"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 505
    iget-object v9, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    invoke-static {v9}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->access$700(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    iget-object v9, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    invoke-static {v9}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->access$700(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 423
    .end local v3    # "existUrlRequestMethod":Ljava/lang/String;
    .end local v7    # "requestMethod":Ljava/lang/String;
    .restart local v2    # "existUrlHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "nullHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    invoke-static {v2}, Lorg/wlf/filedownloader/util/MapUtil;->isEmpty(Ljava/util/Map;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 424
    iget-object v9, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    invoke-static {v9}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->access$400(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 426
    invoke-interface {v5, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 430
    :cond_6
    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 456
    .end local v2    # "existUrlHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "nullHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "existUrlRetryDownloadTimes":I
    .restart local v8    # "retryDownloadTimes":I
    :cond_7
    iget-object v9, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    invoke-static {v9}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->access$500(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 457
    iget-object v9, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    invoke-static {v9}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->access$500(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, p1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 463
    :cond_8
    iget-object v9, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    invoke-static {v9}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->access$500(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 464
    iget-object v9, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    invoke-static {v9}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->access$500(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, p1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 484
    .end local v4    # "existUrlRetryDownloadTimes":I
    .end local v8    # "retryDownloadTimes":I
    .restart local v0    # "connectTimeout":I
    .restart local v1    # "existUrlConnectTimeout":I
    :cond_9
    iget-object v9, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    invoke-static {v9}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->access$600(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 485
    iget-object v9, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    invoke-static {v9}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->access$600(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, p1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 491
    :cond_a
    iget-object v9, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    invoke-static {v9}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->access$600(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 492
    iget-object v9, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    invoke-static {v9}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->access$600(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, p1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 510
    .end local v0    # "connectTimeout":I
    .end local v1    # "existUrlConnectTimeout":I
    .restart local v3    # "existUrlRequestMethod":Ljava/lang/String;
    .restart local v7    # "requestMethod":Ljava/lang/String;
    :cond_b
    iget-object v9, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    invoke-static {v9}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->access$700(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 511
    iget-object v9, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    invoke-static {v9}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->access$700(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 516
    :cond_c
    iget-object v9, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    invoke-static {v9}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->access$700(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 517
    iget-object v9, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    invoke-static {v9}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->access$700(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method


# virtual methods
.method public getConnectTimeout(Ljava/lang/String;)I
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x3a98

    .line 583
    invoke-static {p1}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    invoke-static {v2}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->access$600(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_1

    .line 591
    :cond_0
    :goto_0
    return v1

    .line 587
    :cond_1
    iget-object v2, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    invoke-static {v2}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->access$600(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 588
    .local v0, "connectTimeout":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 552
    invoke-static {p1}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    invoke-static {v0}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->access$400(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    .line 553
    :cond_0
    const/4 v0, 0x0

    .line 555
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    invoke-static {v0}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->access$400(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0
.end method

.method public getRequestMethod(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 600
    invoke-static {p1}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    invoke-static {v1}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->access$700(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_2

    .line 601
    :cond_0
    const-string v0, "GET"

    .line 608
    :cond_1
    :goto_0
    return-object v0

    .line 604
    :cond_2
    iget-object v1, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    invoke-static {v1}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->access$700(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 605
    .local v0, "requestMethod":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 606
    const-string v0, "GET"

    goto :goto_0
.end method

.method public getRetryDownloadTimes(Ljava/lang/String;)I
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 565
    invoke-static {p1}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    invoke-static {v2}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->access$500(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_1

    .line 573
    :cond_0
    :goto_0
    return v1

    .line 569
    :cond_1
    iget-object v2, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    invoke-static {v2}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->access$500(Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 570
    .local v0, "retryDownloadTimes":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method initNullKeyForUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 400
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/wlf/filedownloader/DownloadConfiguration;->initNullKeyForUrlInternal(Ljava/lang/String;Z)V

    .line 401
    return-void
.end method

.method initNullKeyForUrls(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 528
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/wlf/filedownloader/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/wlf/filedownloader/DownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    if-nez v2, :cond_1

    .line 541
    :cond_0
    return-void

    .line 532
    :cond_1
    const-string v2, "wlf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u521d\u59cb\u5316urls\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/wlf/filedownloader/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 535
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 539
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/wlf/filedownloader/DownloadConfiguration;->initNullKeyForUrlInternal(Ljava/lang/String;Z)V

    goto :goto_0
.end method

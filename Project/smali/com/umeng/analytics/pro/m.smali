.class public Lcom/umeng/analytics/pro/m;
.super Ljava/lang/Object;
.source "EventTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/m$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "fs_lc_tl"

.field private static final e:Ljava/lang/String; = "-1"

.field private static f:Landroid/content/Context;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private g:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    .line 39
    iput v0, p0, Lcom/umeng/analytics/pro/m;->b:I

    const/16 v0, 0x100

    .line 40
    iput v0, p0, Lcom/umeng/analytics/pro/m;->c:I

    const/16 v0, 0xa

    .line 41
    iput v0, p0, Lcom/umeng/analytics/pro/m;->d:I

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 50
    sget-object v0, Lcom/umeng/analytics/pro/m;->f:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/m;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/m$1;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/umeng/analytics/pro/m;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/pro/m;
    .locals 1

    .line 61
    sget-object v0, Lcom/umeng/analytics/pro/m;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/pro/m;->f:Landroid/content/Context;

    .line 67
    :cond_0
    invoke-static {}, Lcom/umeng/analytics/pro/m$a;->a()Lcom/umeng/analytics/pro/m;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 472
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 475
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 478
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_12

    .line 480
    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 481
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    const/16 v3, 0x80

    .line 484
    invoke-static {v2, v3}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 486
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 489
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_a

    .line 490
    instance-of v3, v1, [I

    if-eqz v3, :cond_2

    .line 491
    check-cast v1, [I

    .line 492
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 493
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 494
    aget v5, v1, v4

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 496
    :cond_1
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 497
    :cond_2
    instance-of v3, v1, [D

    if-eqz v3, :cond_4

    .line 498
    check-cast v1, [D

    .line 499
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 500
    :goto_2
    array-length v5, v1

    if-ge v4, v5, :cond_3

    .line 501
    aget-wide v5, v1, v4

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 503
    :cond_3
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 504
    :cond_4
    instance-of v3, v1, [J

    if-eqz v3, :cond_6

    .line 505
    check-cast v1, [J

    .line 506
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 507
    :goto_3
    array-length v5, v1

    if-ge v4, v5, :cond_5

    .line 508
    aget-wide v5, v1, v4

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 510
    :cond_5
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 511
    :cond_6
    instance-of v3, v1, [F

    if-eqz v3, :cond_8

    .line 512
    check-cast v1, [F

    .line 513
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 514
    :goto_4
    array-length v5, v1

    if-ge v4, v5, :cond_7

    .line 515
    aget v5, v1, v4

    float-to-double v5, v5

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 517
    :cond_7
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 518
    :cond_8
    instance-of v3, v1, [S

    if-eqz v3, :cond_0

    .line 519
    check-cast v1, [S

    .line 520
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 521
    :goto_5
    array-length v5, v1

    if-ge v4, v5, :cond_9

    .line 522
    aget-short v5, v1, v4

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 524
    :cond_9
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 531
    :cond_a
    instance-of v3, v1, Ljava/util/List;

    if-eqz v3, :cond_e

    .line 532
    check-cast v1, Ljava/util/List;

    .line 533
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 535
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_d

    .line 536
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 537
    instance-of v6, v5, Ljava/lang/String;

    if-nez v6, :cond_b

    instance-of v6, v5, Ljava/lang/Long;

    if-nez v6, :cond_b

    instance-of v6, v5, Ljava/lang/Integer;

    if-nez v6, :cond_b

    instance-of v6, v5, Ljava/lang/Float;

    if-nez v6, :cond_b

    instance-of v6, v5, Ljava/lang/Double;

    if-nez v6, :cond_b

    instance-of v5, v5, Ljava/lang/Short;

    if-eqz v5, :cond_c

    .line 544
    :cond_b
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 547
    :cond_d
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 548
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 550
    :cond_e
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_f

    .line 551
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x100

    invoke-static {v1, v3}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 553
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 554
    :cond_f
    instance-of v3, v1, Ljava/lang/Long;

    if-nez v3, :cond_11

    instance-of v3, v1, Ljava/lang/Integer;

    if-nez v3, :cond_11

    instance-of v3, v1, Ljava/lang/Float;

    if-nez v3, :cond_11

    instance-of v3, v1, Ljava/lang/Double;

    if-nez v3, :cond_11

    instance-of v3, v1, Ljava/lang/Short;

    if-eqz v3, :cond_10

    goto :goto_7

    :cond_10
    const-string v1, "The param has not support type. please check !"

    .line 585
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 560
    :cond_11
    :goto_7
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .line 595
    :try_start_2
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    :cond_12
    return-object v0
.end method

.method private a()V
    .locals 6

    .line 312
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/m;->f:Landroid/content/Context;

    const-string v1, "track_list"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "!"

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 315
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 317
    iget-object v2, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 319
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 320
    aget-object v4, v0, v2

    const/16 v5, 0x80

    invoke-static {v4, v5}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 321
    iget-object v5, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 322
    iget-object v5, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 328
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    .line 329
    array-length v2, v0

    const/16 v4, 0xa

    if-lt v2, v4, :cond_2

    :goto_1
    if-ge v3, v4, :cond_3

    .line 331
    aget-object v2, v0, v3

    invoke-direct {p0, v2, v1}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 334
    :cond_2
    :goto_2
    array-length v2, v0

    if-ge v3, v2, :cond_3

    .line 335
    aget-object v2, v0, v3

    invoke-direct {p0, v2, v1}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 339
    :cond_3
    sget-object v0, Lcom/umeng/analytics/pro/m;->f:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/m;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/16 v0, 0x80

    .line 353
    invoke-static {p1, v0}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 354
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 357
    invoke-direct {p0, p1, p2}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 1

    :try_start_0
    const-string v0, "$st_fl"

    .line 363
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "du"

    .line 364
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "id"

    .line 365
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ts"

    .line 366
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 609
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_0

    const/16 v0, 0x80

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "Event id is empty or too long in tracking Event"

    .line 616
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .line 294
    :try_start_0
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "fs_lc_tl"

    const/4 v1, 0x0

    .line 295
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 296
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    .line 302
    :cond_0
    invoke-direct {p0}, Lcom/umeng/analytics/pro/m;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 630
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    const/16 v1, 0x100

    if-gt p1, v1, :cond_1

    return v0

    :cond_1
    const-string p1, "Event label or value is empty or too long in tracking Event"

    .line 633
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 644
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 649
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 650
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string p1, "map has NULL key. please check!"

    .line 651
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return v0

    .line 655
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    return v0

    .line 659
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/umeng/analytics/pro/m;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_4
    :goto_0
    const-string p1, "map is null or empty in onEvent"

    .line 645
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method private c(Landroid/content/Context;)V
    .locals 2

    .line 385
    :try_start_0
    iget-object p1, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    .line 386
    sget-object p1, Lcom/umeng/analytics/pro/m;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 387
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "fs_lc_tl"

    iget-object v1, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 6

    .line 159
    :try_start_0
    check-cast p1, Lcom/umeng/analytics/pro/i$d;

    .line 161
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/i$d;->c()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/i$d;->a()Ljava/util/Map;

    move-result-object v1

    .line 163
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/i$d;->b()Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/i$d;->d()J

    move-result-wide v3

    .line 166
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x80

    .line 170
    invoke-static {v0, p1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 172
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "_$!id"

    .line 173
    invoke-virtual {v0, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "_$!ts"

    .line 174
    invoke-virtual {v0, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 176
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/analytics/pro/o;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "__ii"

    .line 178
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v3, "-1"

    :cond_1
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v3, :cond_2

    .line 182
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "_$!sp"

    .line 184
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 190
    :catch_0
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/umeng/analytics/pro/m;->a()V

    if-eqz v1, :cond_4

    .line 192
    invoke-direct {p0, v1}, Lcom/umeng/analytics/pro/m;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    .line 194
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 195
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 197
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v3, :cond_4

    .line 199
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 200
    sget-object v4, Lcom/umeng/analytics/pro/b;->aq:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 201
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_3
    const-string v3, "the key in map about track interface is invalid.  "

    .line 203
    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    .line 206
    :try_start_4
    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 212
    :cond_4
    iget-object v1, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    .line 213
    iget-object v1, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 214
    iget-object v1, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "$st_fl"

    const/4 v2, 0x1

    .line 220
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 221
    iget-object v1, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 222
    sget-object p1, Lcom/umeng/analytics/pro/m;->f:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/m;->c(Landroid/content/Context;)V

    .line 230
    :cond_5
    sget-object p1, Lcom/umeng/analytics/pro/m;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/Object;IZ)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 3

    .line 121
    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_5

    invoke-direct {p0, p2}, Lcom/umeng/analytics/pro/m;->b(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    sget-object p5, Lcom/umeng/analytics/pro/b;->ap:[Ljava/lang/String;

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    const-string p1, "the id is valid!"

    .line 125
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 128
    :cond_1
    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "id"

    .line 129
    invoke-virtual {p5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ts"

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p5, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_2

    const-string v0, "du"

    .line 132
    invoke-virtual {p5, v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_2
    const-string p3, "__t"

    const/16 p4, 0x801

    .line 134
    invoke-virtual {p5, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-nez p2, :cond_3

    const-string p2, ""

    .line 135
    :cond_3
    invoke-virtual {p5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/o;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "__i"

    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p1, "-1"

    :cond_4
    invoke-virtual {p5, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    sget-object p1, Lcom/umeng/analytics/pro/m;->f:Landroid/content/Context;

    const/16 p2, 0x1001

    sget-object p3, Lcom/umeng/analytics/pro/m;->f:Landroid/content/Context;

    .line 141
    invoke-static {p3}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object p3

    .line 140
    invoke-static {p1, p2, p3, p5}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_5
    :goto_0
    return-void

    :catch_0
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 242
    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 245
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    .line 246
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ts"

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "du"

    const/4 v1, 0x0

    .line 248
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "__t"

    const/16 v2, 0x802

    .line 249
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 251
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    const/16 p2, 0xa

    if-ge v1, p2, :cond_3

    .line 255
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 256
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    const-string v2, "$st_fl"

    .line 257
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "du"

    .line 258
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "id"

    .line 259
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ts"

    .line 260
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 261
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 262
    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_1

    instance-of v3, v2, Ljava/lang/Integer;

    if-nez v3, :cond_1

    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_2

    .line 263
    :cond_1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    :cond_3
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/o;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "__i"

    .line 269
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, "-1"

    :cond_4
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    sget-object p1, Lcom/umeng/analytics/pro/m;->f:Landroid/content/Context;

    const/16 p2, 0x1002

    sget-object v1, Lcom/umeng/analytics/pro/m;->f:Landroid/content/Context;

    .line 272
    invoke-static {v1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v1

    .line 271
    invoke-static {p1, p2, v1, v0}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .line 75
    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-direct {p0, p2}, Lcom/umeng/analytics/pro/m;->b(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 81
    :cond_1
    sget-object v0, Lcom/umeng/analytics/pro/b;->ap:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "the id is valid!"

    .line 82
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 86
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    .line 87
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ts"

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-wide/16 v1, 0x0

    cmp-long p1, p3, v1

    if-lez p1, :cond_3

    const-string p1, "du"

    .line 90
    invoke-virtual {v0, p1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_3
    const-string p1, "__t"

    const/16 p3, 0x801

    .line 92
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    const/16 p3, 0xa

    if-ge p2, p3, :cond_7

    .line 97
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 98
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 99
    sget-object p4, Lcom/umeng/analytics/pro/b;->ap:[Ljava/lang/String;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    .line 100
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    .line 101
    instance-of v1, p4, Ljava/lang/String;

    if-nez v1, :cond_4

    instance-of v1, p4, Ljava/lang/Integer;

    if-nez v1, :cond_4

    instance-of v1, p4, Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 102
    :cond_4
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_5
    const-string p3, "the key in map is invalid.  "

    .line 105
    invoke-static {p3}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    :cond_6
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 109
    :cond_7
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/o;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "__i"

    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_8

    const-string p1, "-1"

    :cond_8
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    sget-object p1, Lcom/umeng/analytics/pro/m;->f:Landroid/content/Context;

    const/16 p2, 0x1001

    sget-object p3, Lcom/umeng/analytics/pro/m;->f:Landroid/content/Context;

    .line 112
    invoke-static {p3}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object p3

    .line 111
    invoke-static {p1, p2, p3, v0}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_9

    .line 404
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_5

    .line 407
    :cond_0
    invoke-direct {p0}, Lcom/umeng/analytics/pro/m;->a()V

    .line 409
    iget-object v0, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    const/16 v1, 0x80

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-nez v0, :cond_5

    .line 410
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    .line 411
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_4

    .line 414
    iget-object v5, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    if-nez v5, :cond_1

    .line 415
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iput-object v5, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    goto :goto_1

    .line 417
    :cond_1
    iget-object v5, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lt v5, v2, :cond_2

    goto :goto_2

    .line 422
    :cond_2
    :goto_1
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 423
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 424
    invoke-static {v5, v1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 425
    invoke-direct {p0, v5, v3}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;Z)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 428
    :cond_4
    :goto_2
    sget-object p1, Lcom/umeng/analytics/pro/m;->f:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/m;->c(Landroid/content/Context;)V

    goto :goto_4

    .line 430
    :cond_5
    iget-object v0, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lt v0, v2, :cond_6

    const-string p1, "already setFistLaunchEvent, igone."

    .line 431
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    return-void

    :cond_6
    const/4 v0, 0x0

    .line 434
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_8

    .line 435
    iget-object v4, p0, Lcom/umeng/analytics/pro/m;->g:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lt v4, v2, :cond_7

    const-string p1, " add setFistLaunchEvent over."

    .line 436
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    return-void

    .line 439
    :cond_7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 440
    invoke-direct {p0, v4, v3}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 443
    :cond_8
    sget-object p1, Lcom/umeng/analytics/pro/m;->f:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/m;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_4
    return-void

    :cond_9
    :goto_5
    return-void
.end method

.class public Lcom/umeng/analytics/b;
.super Ljava/lang/Object;
.source "InternalAgent.java"

# interfaces
.implements Lcom/umeng/analytics/pro/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/b$a;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = "sp"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/umeng/analytics/pro/r;

.field private c:Lcom/umeng/analytics/pro/j;

.field private d:Lcom/umeng/analytics/pro/p;

.field private e:Lcom/umeng/analytics/pro/o;

.field private f:Lcom/umeng/analytics/pro/h;

.field private h:Z

.field private volatile i:Lorg/json/JSONObject;

.field private volatile j:Lorg/json/JSONObject;

.field private k:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 49
    new-instance v1, Lcom/umeng/analytics/pro/j;

    invoke-direct {v1}, Lcom/umeng/analytics/pro/j;-><init>()V

    iput-object v1, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/pro/j;

    .line 50
    new-instance v1, Lcom/umeng/analytics/pro/p;

    invoke-direct {v1}, Lcom/umeng/analytics/pro/p;-><init>()V

    iput-object v1, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/p;

    .line 51
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/pro/o;

    .line 52
    iput-object v0, p0, Lcom/umeng/analytics/b;->f:Lcom/umeng/analytics/pro/h;

    const/4 v1, 0x0

    .line 54
    iput-boolean v1, p0, Lcom/umeng/analytics/b;->h:Z

    .line 55
    iput-object v0, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    .line 56
    iput-object v0, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    .line 57
    iput-boolean v1, p0, Lcom/umeng/analytics/b;->k:Z

    .line 60
    iget-object v0, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/pro/j;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/pro/j;->a(Lcom/umeng/analytics/pro/n;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/b$1;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/umeng/analytics/b;-><init>()V

    return-void
.end method

.method public static a()Lcom/umeng/analytics/b;
    .locals 1

    .line 68
    invoke-static {}, Lcom/umeng/analytics/b$a;->a()Lcom/umeng/analytics/b;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 597
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 598
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    .line 601
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 603
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 604
    instance-of v0, p2, [Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 606
    check-cast p2, [Ljava/lang/String;

    .line 607
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 608
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 609
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 611
    :cond_1
    iget-object p2, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_7

    .line 612
    :cond_2
    instance-of v0, p2, [J

    if-eqz v0, :cond_4

    .line 613
    check-cast p2, [J

    .line 614
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 615
    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_3

    .line 616
    aget-wide v2, p2, v1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 618
    :cond_3
    iget-object p2, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_7

    .line 619
    :cond_4
    instance-of v0, p2, [I

    if-eqz v0, :cond_6

    .line 620
    check-cast p2, [I

    .line 621
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 622
    :goto_2
    array-length v2, p2

    if-ge v1, v2, :cond_5

    .line 623
    aget v2, p2, v1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 625
    :cond_5
    iget-object p2, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_7

    .line 626
    :cond_6
    instance-of v0, p2, [F

    if-eqz v0, :cond_8

    .line 627
    check-cast p2, [F

    .line 628
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 629
    :goto_3
    array-length v2, p2

    if-ge v1, v2, :cond_7

    .line 630
    aget v2, p2, v1

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 632
    :cond_7
    iget-object p2, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_7

    .line 633
    :cond_8
    instance-of v0, p2, [D

    if-eqz v0, :cond_a

    .line 634
    check-cast p2, [D

    .line 635
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 636
    :goto_4
    array-length v2, p2

    if-ge v1, v2, :cond_9

    .line 637
    aget-wide v2, p2, v1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 639
    :cond_9
    iget-object p2, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_7

    .line 640
    :cond_a
    instance-of v0, p2, [S

    if-eqz v0, :cond_12

    .line 641
    check-cast p2, [S

    .line 642
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 643
    :goto_5
    array-length v2, p2

    if-ge v1, v2, :cond_b

    .line 644
    aget-short v2, p2, v1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 646
    :cond_b
    iget-object p2, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7

    .line 651
    :cond_c
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_10

    .line 652
    check-cast p2, Ljava/util/List;

    .line 653
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 655
    :goto_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_f

    .line 656
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 657
    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_d

    instance-of v3, v2, Ljava/lang/Long;

    if-nez v3, :cond_d

    instance-of v3, v2, Ljava/lang/Integer;

    if-nez v3, :cond_d

    instance-of v3, v2, Ljava/lang/Float;

    if-nez v3, :cond_d

    instance-of v3, v2, Ljava/lang/Double;

    if-nez v3, :cond_d

    instance-of v2, v2, Ljava/lang/Short;

    if-eqz v2, :cond_e

    .line 664
    :cond_d
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 667
    :cond_f
    iget-object p2, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7

    .line 668
    :cond_10
    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_11

    instance-of v0, p2, Ljava/lang/Long;

    if-nez v0, :cond_11

    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_11

    instance-of v0, p2, Ljava/lang/Float;

    if-nez v0, :cond_11

    instance-of v0, p2, Ljava/lang/Double;

    if-nez v0, :cond_11

    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_12

    .line 675
    :cond_11
    iget-object v0, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_12
    :goto_7
    return-void
.end method

.method private f(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "unexpected null context in getNativeSuperProperties"

    .line 824
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-object v0

    .line 827
    :cond_0
    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 828
    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 830
    :cond_1
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "sp"

    .line 831
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 833
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 834
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_2
    return-object v0
.end method


# virtual methods
.method a(DD)V
    .locals 2

    .line 474
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 475
    new-array v0, v0, [D

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    .line 478
    :cond_0
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 479
    sget-object p1, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    const/4 p2, 0x1

    aput-wide p3, p1, p2

    return-void
.end method

.method a(J)V
    .locals 0

    .line 542
    sput-wide p1, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "unexpected null context in onResume"

    .line 156
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 160
    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 164
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->h:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez v0, :cond_3

    .line 165
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->b()V

    .line 167
    :cond_3
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v0, :cond_4

    .line 168
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/p;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/p;->a(Ljava/lang/String;)V

    .line 170
    :cond_4
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->e()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Exception occurred in Mobclick.onResume(). "

    .line 172
    invoke-static {v0, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "unexpected null context in setVerticalType"

    .line 142
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 146
    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 148
    :cond_1
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->h:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez p1, :cond_3

    .line 149
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->b()V

    .line 151
    :cond_3
    iget-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/umeng/analytics/AnalyticsConfig;->a(Landroid/content/Context;I)V

    return-void
.end method

.method a(Landroid/content/Context;Lcom/umeng/analytics/MobclickAgent$EScenarioType;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "unexpected null context in setScenarioType"

    .line 490
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 494
    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    :cond_1
    if-eqz p2, :cond_4

    .line 497
    invoke-virtual {p2}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result p1

    .line 501
    sget-object p2, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {p2}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result p2

    const/4 v0, 0x1

    if-ne p1, p2, :cond_2

    .line 502
    sput-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    goto :goto_0

    .line 503
    :cond_2
    sget-object p2, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_GAME:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {p2}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result p2

    if-ne p1, p2, :cond_3

    .line 504
    sput-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 506
    sput-boolean p2, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    .line 508
    :goto_0
    iget-object p2, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p2, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;I)V

    .line 510
    :cond_4
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->h:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez p1, :cond_6

    .line 511
    :cond_5
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->b()V

    :cond_6
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 219
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "unexpected null context in reportError"

    .line 224
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 228
    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 231
    :cond_2
    :try_start_0
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->h:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez p1, :cond_4

    .line 232
    :cond_3
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->b()V

    .line 234
    :cond_4
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "ts"

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "error_source"

    const/4 v1, 0x2

    .line 236
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "context"

    .line 237
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "__ii"

    .line 238
    iget-object v0, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/pro/o;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    iget-object p2, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v0, 0x100a

    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 241
    invoke-static {v1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v1

    .line 239
    invoke-static {p2, v0, v1, p1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 243
    sget-boolean p2, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz p2, :cond_5

    .line 244
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "unexpected null context in registerSuperProperty"

    .line 559
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 563
    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 565
    :cond_1
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->h:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez p1, :cond_3

    .line 566
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->b()V

    .line 568
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    if-nez p3, :cond_4

    goto :goto_0

    :cond_4
    const/16 p1, 0x80

    .line 574
    invoke-static {p2, p1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 576
    sget-object p2, Lcom/umeng/analytics/pro/b;->aq:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 577
    instance-of p2, p3, Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 578
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x100

    invoke-static {p2, p3}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    .line 580
    :cond_5
    invoke-direct {p0, p1, p3}, Lcom/umeng/analytics/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 581
    iget-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 p2, 0x2003

    iget-object p3, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 583
    invoke-static {p3}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object p3

    iget-object v0, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 581
    invoke-static {p1, p2, p3, v0}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    const-string p1, "SuperProperty  key is invalid.  "

    .line 585
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    :goto_0
    const-string p1, "please check key or value, must not NULL!"

    .line 569
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 589
    :goto_1
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 6

    if-eqz p1, :cond_0

    .line 306
    :try_start_0
    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 308
    :cond_0
    :goto_0
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->h:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez p1, :cond_2

    .line 309
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->b()V

    .line 311
    :cond_2
    iget-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/m;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/m;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-wide v3, p4

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 313
    :goto_1
    sget-boolean p2, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz p2, :cond_3

    .line 314
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 204
    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 207
    :cond_0
    :goto_0
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->h:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez p1, :cond_2

    .line 208
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->b()V

    .line 210
    :cond_2
    iget-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/m;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/m;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 212
    :goto_1
    sget-boolean p2, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz p2, :cond_3

    .line 213
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 339
    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 342
    :cond_0
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->h:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez p1, :cond_2

    .line 343
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->b()V

    .line 345
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "the eventName is empty! please check~"

    .line 346
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p1, ""

    .line 351
    iget-object v0, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    if-nez v0, :cond_4

    .line 352
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    goto :goto_0

    .line 354
    :cond_4
    iget-object p1, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v3, p1

    .line 356
    iget-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v6, 0x2002

    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 358
    invoke-static {v0}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v7

    new-instance v8, Lcom/umeng/analytics/pro/i$d;

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, v8

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/umeng/analytics/pro/i$d;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;J)V

    .line 356
    invoke-static {p1, v6, v7, v8}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 322
    :try_start_0
    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 324
    :cond_0
    :goto_0
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->h:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez p1, :cond_2

    .line 325
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->b()V

    .line 327
    :cond_2
    iget-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/m;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/m;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/umeng/analytics/pro/m;->a(Ljava/lang/String;Ljava/util/Map;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 329
    :goto_1
    sget-boolean p2, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz p2, :cond_3

    .line 330
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 260
    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 263
    :cond_1
    :try_start_0
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->h:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez p1, :cond_3

    .line 264
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->b()V

    .line 266
    :cond_3
    iget-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->convertExceptionToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 268
    sget-boolean p2, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz p2, :cond_4

    .line 269
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "unexpected null context in setFirstLaunchEvent"

    .line 879
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 883
    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 885
    :cond_1
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->h:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez p1, :cond_3

    .line 886
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->b()V

    .line 888
    :cond_3
    iget-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/m;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/m;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/pro/m;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 890
    :goto_0
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/r;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/umeng/analytics/b;->b:Lcom/umeng/analytics/pro/r;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 694
    :try_start_0
    check-cast p1, Ljava/lang/String;

    .line 695
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 696
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "sp"

    .line 697
    iget-object v1, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    .line 119
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-nez v0, :cond_0

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/p;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/p;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 416
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "provider"

    .line 417
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "uid"

    .line 418
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 419
    iget-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 p2, 0x1005

    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 421
    invoke-static {v1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v1

    .line 419
    invoke-static {p1, p2, v1, v0}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 423
    sget-boolean p2, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz p2, :cond_0

    const-string p2, " Excepthon  in  onProfileSignIn"

    .line 424
    invoke-static {p2, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 4

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/p;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/p;->a()V

    .line 389
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/umeng/analytics/b;->f:Lcom/umeng/analytics/pro/h;

    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V

    .line 391
    iget-object v0, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/pro/o;

    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/umeng/analytics/pro/o;->b(Landroid/content/Context;Ljava/lang/Object;)V

    .line 392
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/i;->a()V

    .line 393
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/p;->a(Landroid/content/Context;)V

    .line 394
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->b(Landroid/content/Context;)V

    .line 395
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p1, :cond_0

    .line 397
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ts"

    .line 398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "error_source"

    const/4 v2, 0x1

    .line 399
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "context"

    .line 400
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->convertExceptionToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 401
    iget-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p1

    iget-object v1, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/pro/o;

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/o;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0, v2}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 406
    :cond_0
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->Quit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 408
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Exception in onAppCrash"

    .line 409
    invoke-static {v0, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    .line 451
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getGPU(Ljavax/microedition/khronos/opengles/GL10;)[Ljava/lang/String;

    move-result-object p1

    .line 452
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 453
    aget-object v0, p1, v0

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->GPU_VENDER:Ljava/lang/String;

    const/4 v0, 0x1

    .line 454
    aget-object p1, p1, v0

    sput-object p1, Lcom/umeng/analytics/AnalyticsConfig;->GPU_RENDERER:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 0

    .line 442
    sput-boolean p1, Lcom/umeng/analytics/AnalyticsConfig;->CATCH_EXCEPTION:Z

    return-void
.end method

.method public b()V
    .locals 3

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->h:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 79
    iput-boolean v1, p0, Lcom/umeng/analytics/b;->h:Z

    .line 83
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/b;->f(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    .line 84
    iget-object v0, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 85
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    .line 87
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    .line 90
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-le v0, v2, :cond_4

    .line 91
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :try_start_1
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez v0, :cond_3

    .line 93
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 94
    new-instance v0, Lcom/umeng/analytics/pro/h;

    iget-object v2, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/umeng/analytics/pro/h;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/umeng/analytics/b;->f:Lcom/umeng/analytics/pro/h;

    .line 95
    iput-boolean v1, p0, Lcom/umeng/analytics/b;->k:Z

    .line 98
    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 101
    :cond_4
    iput-boolean v1, p0, Lcom/umeng/analytics/b;->k:Z

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void
.end method

.method b(Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "unexpected null context in onPause"

    .line 178
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 182
    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 186
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->h:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez v0, :cond_3

    .line 187
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->b()V

    .line 189
    :cond_3
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v0, :cond_4

    .line 190
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/p;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/p;->b(Ljava/lang/String;)V

    .line 192
    :cond_4
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->f()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 194
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "Exception occurred in Mobclick.onRause(). "

    .line 195
    invoke-static {v0, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "unexpected null context in setSecret"

    .line 524
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 528
    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 530
    :cond_1
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->h:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez p1, :cond_3

    .line 531
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->b()V

    .line 533
    :cond_3
    iget-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/umeng/analytics/AnalyticsConfig;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    .line 128
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-nez v0, :cond_0

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/p;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/p;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method b(Z)V
    .locals 0

    .line 464
    sput-boolean p1, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    return-void
.end method

.method public c()Lorg/json/JSONObject;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    return-object v0
.end method

.method c(Landroid/content/Context;)V
    .locals 3

    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 368
    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 371
    :cond_0
    iget-object p1, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/pro/p;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/p;->a()V

    .line 372
    iget-object p1, p0, Lcom/umeng/analytics/b;->f:Lcom/umeng/analytics/pro/h;

    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V

    .line 373
    iget-object p1, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/pro/o;

    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/umeng/analytics/pro/o;->b(Landroid/content/Context;Ljava/lang/Object;)V

    .line 374
    iget-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/i;->a()V

    .line 375
    iget-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/p;->a(Landroid/content/Context;)V

    .line 376
    iget-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->b(Landroid/content/Context;)V

    .line 377
    iget-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 380
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->Quit()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "unexpected null context in unregisterSuperProperty"

    .line 718
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 722
    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 724
    :cond_1
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->h:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez p1, :cond_3

    .line 725
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->b()V

    :cond_3
    const/16 p1, 0x80

    .line 727
    invoke-static {p2, p1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 729
    iget-object p2, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    if-nez p2, :cond_4

    .line 730
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iput-object p2, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    .line 732
    :cond_4
    iget-object p2, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 733
    iget-object p2, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 735
    iget-object p2, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v0, 0x2005

    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 737
    invoke-static {v1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v1

    .line 735
    invoke-static {p2, v0, v1, p1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 741
    :goto_0
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "unexpected null context in getSuperProperty"

    .line 765
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    .line 768
    :cond_0
    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 769
    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 771
    :cond_1
    iget-object p1, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    if-eqz p1, :cond_2

    const/16 p1, 0x80

    .line 772
    invoke-static {p2, p1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 773
    iget-object p2, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 774
    iget-object p2, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 777
    :cond_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 780
    :goto_0
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-object v0
.end method

.method public d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "unexpected null context in getSuperProperties"

    .line 788
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    .line 791
    :cond_0
    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 792
    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 794
    :cond_1
    iget-object p1, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    if-eqz p1, :cond_2

    .line 795
    iget-object p1, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 797
    :cond_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 800
    :goto_0
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/umeng/analytics/b;->j:Lorg/json/JSONObject;

    return-void
.end method

.method public e()V
    .locals 4

    .line 275
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 277
    invoke-static {v1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x1007

    .line 275
    invoke-static {v0, v3, v1, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 278
    iget-object v0, p0, Lcom/umeng/analytics/b;->b:Lcom/umeng/analytics/pro/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/b;->b:Lcom/umeng/analytics/pro/r;

    invoke-interface {v0}, Lcom/umeng/analytics/pro/r;->a()V

    :cond_0
    return-void
.end method

.method public e(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "unexpected null context in clearSuperProperties"

    .line 850
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 854
    iput-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 856
    :cond_1
    iget-boolean p1, p0, Lcom/umeng/analytics/b;->h:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez p1, :cond_3

    .line 857
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/analytics/b;->b()V

    .line 859
    :cond_3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    .line 860
    iget-object p1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v0, 0x2004

    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 862
    invoke-static {v1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v1

    const/4 v2, 0x0

    .line 860
    invoke-static {p1, v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    return-void
.end method

.method public f()V
    .locals 5

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v1, 0x1008

    iget-object v2, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 286
    invoke-static {v2}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 284
    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 287
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v1, 0x1004

    iget-object v2, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 289
    invoke-static {v2}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    const/4 v3, 0x0

    .line 287
    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 290
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v1, 0x1003

    iget-object v2, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 292
    invoke-static {v2}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    .line 290
    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 293
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    const/16 v1, 0x1009

    iget-object v2, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 295
    invoke-static {v2}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    .line 293
    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :catch_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->b:Lcom/umeng/analytics/pro/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/b;->b:Lcom/umeng/analytics/pro/r;

    invoke-interface {v0}, Lcom/umeng/analytics/pro/r;->b()V

    :cond_0
    return-void
.end method

.method g()V
    .locals 4

    .line 431
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 433
    invoke-static {v1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v1

    const/16 v2, 0x1006

    const/4 v3, 0x0

    .line 431
    invoke-static {v0, v2, v1, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    return-void
.end method

.method public h()V
    .locals 3

    .line 750
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 752
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sp"

    .line 753
    iget-object v2, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 754
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 756
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public i()Lorg/json/JSONObject;
    .locals 1

    .line 807
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 808
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->i:Lorg/json/JSONObject;

    return-object v0
.end method

.method public j()V
    .locals 2

    .line 867
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 868
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sp"

    .line 869
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 870
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 872
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

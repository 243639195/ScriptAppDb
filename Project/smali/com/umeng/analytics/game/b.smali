.class Lcom/umeng/analytics/game/b;
.super Ljava/lang/Object;
.source "InternalGameAgent.java"

# interfaces
.implements Lcom/umeng/analytics/pro/r;


# static fields
.field public static a:Z = true


# instance fields
.field private A:Landroid/content/Context;

.field private b:Lcom/umeng/analytics/b;

.field private c:Lcom/umeng/analytics/game/a;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private final s:Ljava/lang/String;

.field private final t:Ljava/lang/String;

.field private final u:Ljava/lang/String;

.field private final v:Ljava/lang/String;

.field private final w:Ljava/lang/String;

.field private final x:Ljava/lang/String;

.field private final y:Ljava/lang/String;

.field private final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lcom/umeng/analytics/MobclickAgent;->getAgent()Lcom/umeng/analytics/b;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/game/b;->b:Lcom/umeng/analytics/b;

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    const/16 v0, 0x64

    .line 22
    iput v0, p0, Lcom/umeng/analytics/game/b;->d:I

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/umeng/analytics/game/b;->e:I

    const/4 v1, 0x0

    .line 25
    iput v1, p0, Lcom/umeng/analytics/game/b;->f:I

    const/4 v1, -0x1

    .line 26
    iput v1, p0, Lcom/umeng/analytics/game/b;->g:I

    .line 27
    iput v0, p0, Lcom/umeng/analytics/game/b;->h:I

    const-string v1, "level"

    .line 29
    iput-object v1, p0, Lcom/umeng/analytics/game/b;->i:Ljava/lang/String;

    const-string v1, "pay"

    .line 30
    iput-object v1, p0, Lcom/umeng/analytics/game/b;->j:Ljava/lang/String;

    const-string v1, "buy"

    .line 31
    iput-object v1, p0, Lcom/umeng/analytics/game/b;->k:Ljava/lang/String;

    const-string v1, "use"

    .line 32
    iput-object v1, p0, Lcom/umeng/analytics/game/b;->l:Ljava/lang/String;

    const-string v1, "bonus"

    .line 33
    iput-object v1, p0, Lcom/umeng/analytics/game/b;->m:Ljava/lang/String;

    const-string v1, "item"

    .line 35
    iput-object v1, p0, Lcom/umeng/analytics/game/b;->n:Ljava/lang/String;

    const-string v1, "cash"

    .line 36
    iput-object v1, p0, Lcom/umeng/analytics/game/b;->o:Ljava/lang/String;

    const-string v1, "coin"

    .line 37
    iput-object v1, p0, Lcom/umeng/analytics/game/b;->p:Ljava/lang/String;

    const-string v1, "source"

    .line 38
    iput-object v1, p0, Lcom/umeng/analytics/game/b;->q:Ljava/lang/String;

    const-string v1, "amount"

    .line 39
    iput-object v1, p0, Lcom/umeng/analytics/game/b;->r:Ljava/lang/String;

    const-string v1, "user_level"

    .line 40
    iput-object v1, p0, Lcom/umeng/analytics/game/b;->s:Ljava/lang/String;

    const-string v1, "bonus_source"

    .line 41
    iput-object v1, p0, Lcom/umeng/analytics/game/b;->t:Ljava/lang/String;

    const-string v1, "level"

    .line 43
    iput-object v1, p0, Lcom/umeng/analytics/game/b;->u:Ljava/lang/String;

    const-string v1, "status"

    .line 44
    iput-object v1, p0, Lcom/umeng/analytics/game/b;->v:Ljava/lang/String;

    const-string v1, "duration"

    .line 45
    iput-object v1, p0, Lcom/umeng/analytics/game/b;->w:Ljava/lang/String;

    const-string v1, "curtype"

    .line 47
    iput-object v1, p0, Lcom/umeng/analytics/game/b;->x:Ljava/lang/String;

    const-string v1, "orderid"

    .line 48
    iput-object v1, p0, Lcom/umeng/analytics/game/b;->y:Ljava/lang/String;

    const-string v1, "UMGameAgent.init(Context) should be called before any game api"

    .line 50
    iput-object v1, p0, Lcom/umeng/analytics/game/b;->z:Ljava/lang/String;

    .line 54
    sput-boolean v0, Lcom/umeng/analytics/game/b;->a:Z

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 5

    .line 120
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p1, "UMGameAgent.init(Context) should be called before any game api"

    .line 121
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    .line 125
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/game/a;->b(Ljava/lang/String;)Lcom/umeng/analytics/game/a$a;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 131
    invoke-virtual {v0}, Lcom/umeng/analytics/game/a$a;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    const-string p1, "level duration is 0"

    .line 133
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    return-void

    .line 137
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "level"

    .line 139
    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "status"

    .line 140
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "duration"

    .line 141
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    if-eqz p1, :cond_3

    const-string p1, "user_level"

    iget-object p2, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p2, p2, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_3
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->b:Lcom/umeng/analytics/b;

    iget-object p2, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    const-string v0, "level"

    invoke-virtual {p1, p2, v0, v2}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_4
    const-string p1, "finishLevel(or failLevel) called before startLevel"

    const/4 p2, 0x0

    .line 145
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_5
    :goto_1
    const-string p1, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    .line 126
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "App resume from background"

    .line 296
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    .line 299
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    .line 303
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 307
    :cond_1
    sget-boolean v0, Lcom/umeng/analytics/game/b;->a:Z

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    invoke-virtual {v0}, Lcom/umeng/analytics/game/a;->b()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-string v0, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    .line 304
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method a(DDI)V
    .locals 4

    .line 186
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p1, "UMGameAgent.init(Context) should be called before any game api"

    .line 187
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    .line 191
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 195
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "cash"

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double p1, p1, v2

    double-to-long p1, p1

    .line 197
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "coin"

    mul-double p3, p3, v2

    double-to-long p2, p3

    .line 198
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "source"

    .line 199
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string p1, "user_level"

    iget-object p2, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p2, p2, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_2
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    if-eqz p1, :cond_3

    const-string p1, "level"

    iget-object p2, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p2, p2, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_3
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->b:Lcom/umeng/analytics/b;

    iget-object p2, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    const-string p3, "pay"

    invoke-virtual {p1, p2, p3, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void

    :cond_4
    :goto_0
    const-string p1, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    .line 192
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method a(DI)V
    .locals 4

    .line 264
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p1, "UMGameAgent.init(Context) should be called before any game api"

    .line 265
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    .line 269
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 274
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "coin"

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double p1, p1, v2

    double-to-long p1, p1

    .line 275
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "bonus_source"

    .line 276
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string p1, "user_level"

    iget-object p2, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p2, p2, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_2
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    if-eqz p1, :cond_3

    const-string p1, "level"

    iget-object p2, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p2, p2, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_3
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->b:Lcom/umeng/analytics/b;

    iget-object p2, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    const-string p3, "bonus"

    invoke-virtual {p1, p2, p3, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void

    :cond_4
    :goto_0
    const-string p1, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    .line 270
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method a(DLjava/lang/String;DILjava/lang/String;)V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p1, "UMGameAgent.init(Context) should be called before any game api"

    .line 331
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    .line 335
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_6

    cmpl-double v2, p4, v0

    if-ltz v2, :cond_6

    .line 340
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 341
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 342
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_2

    const-string v1, "curtype"

    .line 343
    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :cond_2
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    :try_start_0
    const-string p3, "UTF-8"

    .line 348
    invoke-virtual {p7, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    array-length p3, p3

    if-lez p3, :cond_3

    const/16 v1, 0x400

    if-gt p3, v1, :cond_3

    const-string p3, "orderid"

    .line 350
    invoke-virtual {v0, p3, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 353
    invoke-static {p3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    const-string p3, "cash"

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    mul-double p1, p1, v1

    double-to-long p1, p1

    .line 357
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "coin"

    mul-double p4, p4, v1

    double-to-long p2, p4

    .line 358
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "source"

    .line 359
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    if-eqz p1, :cond_4

    const-string p1, "user_level"

    iget-object p2, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p2, p2, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    :cond_4
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    if-eqz p1, :cond_5

    const-string p1, "level"

    iget-object p2, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p2, p2, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    :cond_5
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->b:Lcom/umeng/analytics/b;

    iget-object p2, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    const-string p3, "pay"

    invoke-virtual {p1, p2, p3, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_6
    return-void

    :cond_7
    :goto_1
    const-string p1, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    .line 336
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method a(DLjava/lang/String;IDI)V
    .locals 8

    .line 208
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    .line 209
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-double v0, p4

    mul-double v5, p5, v0

    move-object v2, p0

    move-wide v3, p1

    move v7, p7

    .line 213
    invoke-virtual/range {v2 .. v7}, Lcom/umeng/analytics/game/b;->a(DDI)V

    .line 214
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/umeng/analytics/game/b;->a(Ljava/lang/String;ID)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    .line 210
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "Context is null, can\'t init GameAgent"

    .line 59
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    .line 63
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->b:Lcom/umeng/analytics/b;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/b;->a(Lcom/umeng/analytics/pro/r;)V

    .line 64
    new-instance p1, Lcom/umeng/analytics/game/a;

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/umeng/analytics/game/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p1, "UMGameAgent.init(Context) should be called before any game api"

    .line 78
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iput-object p1, v0, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "userlevel"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method a(Ljava/lang/String;ID)V
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p1, "UMGameAgent.init(Context) should be called before any game api"

    .line 219
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    .line 223
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 228
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item"

    .line 230
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "amount"

    .line 231
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "coin"

    int-to-double v1, p2

    mul-double v1, v1, p3

    const-wide/high16 p2, 0x4059000000000000L    # 100.0

    mul-double v1, v1, p2

    double-to-long p2, v1

    .line 232
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string p1, "user_level"

    iget-object p2, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p2, p2, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_2
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    if-eqz p1, :cond_3

    const-string p1, "level"

    iget-object p2, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p2, p2, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_3
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->b:Lcom/umeng/analytics/b;

    iget-object p2, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    const-string p3, "buy"

    invoke-virtual {p1, p2, p3, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void

    :cond_4
    :goto_0
    const-string p1, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    .line 224
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;IDI)V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    .line 286
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-double v0, p2

    mul-double v0, v0, p3

    .line 290
    invoke-virtual {p0, v0, v1, p5}, Lcom/umeng/analytics/game/b;->a(DI)V

    .line 291
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/umeng/analytics/game/b;->a(Ljava/lang/String;ID)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    .line 287
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method a(Z)V
    .locals 4

    const-string v0, "Trace sleep time : %b"

    const/4 v1, 0x1

    .line 70
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 72
    sput-boolean p1, Lcom/umeng/analytics/game/b;->a:Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    .line 315
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    .line 319
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 324
    :cond_1
    sget-boolean v0, Lcom/umeng/analytics/game/b;->a:Z

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    invoke-virtual {v0}, Lcom/umeng/analytics/game/a;->a()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-string v0, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    .line 320
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p1, "UMGameAgent.init(Context) should be called before any game api"

    .line 96
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    .line 100
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iput-object p1, v0, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/game/a;->a(Ljava/lang/String;)Lcom/umeng/analytics/game/a$a;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "level"

    .line 110
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "status"

    const/4 v1, 0x0

    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string p1, "user_level"

    .line 114
    iget-object v1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object v1, v1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_2
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->b:Lcom/umeng/analytics/b;

    iget-object v1, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    const-string v2, "level"

    invoke-virtual {p1, v1, v2, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void

    :cond_3
    :goto_0
    const-string p1, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    .line 101
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method b(Ljava/lang/String;ID)V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p1, "UMGameAgent.init(Context) should be called before any game api"

    .line 242
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    .line 246
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 251
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item"

    .line 253
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "amount"

    .line 254
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "coin"

    int-to-double v1, p2

    mul-double v1, v1, p3

    const-wide/high16 p2, 0x4059000000000000L    # 100.0

    mul-double v1, v1, p2

    double-to-long p2, v1

    .line 255
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string p1, "user_level"

    iget-object p2, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p2, p2, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_2
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    if-eqz p1, :cond_3

    const-string p1, "level"

    iget-object p2, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p2, p2, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_3
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->b:Lcom/umeng/analytics/b;

    iget-object p2, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    const-string p3, "use"

    invoke-virtual {p1, p2, p3, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void

    :cond_4
    :goto_0
    const-string p1, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    .line 247
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p1, "UMGameAgent.init(Context) should be called before any game api"

    .line 156
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    .line 160
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 164
    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/game/b;->a(Ljava/lang/String;I)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    .line 161
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p1, "UMGameAgent.init(Context) should be called before any game api"

    .line 174
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    .line 178
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 182
    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/game/b;->a(Ljava/lang/String;I)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    .line 179
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void
.end method

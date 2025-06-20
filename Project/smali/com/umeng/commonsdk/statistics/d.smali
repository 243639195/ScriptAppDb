.class public Lcom/umeng/commonsdk/statistics/d;
.super Ljava/lang/Object;
.source "NetWorkManager.java"


# static fields
.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x3

.field private static final p:Ljava/lang/String; = "thtstart"

.field private static final q:Ljava/lang/String; = "gkvc"

.field private static final r:Ljava/lang/String; = "ekvc"


# instance fields
.field a:Ljava/lang/String;

.field private final e:I

.field private f:Lcom/umeng/commonsdk/statistics/internal/c;

.field private g:Lcom/umeng/commonsdk/statistics/idtracking/g;

.field private h:Lcom/umeng/commonsdk/statistics/idtracking/e;

.field private i:Lcom/umeng/commonsdk/statistics/idtracking/g$a;

.field private j:Lcom/umeng/commonsdk/statistics/noise/ABTest;

.field private k:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

.field private l:Lcom/umeng/commonsdk/statistics/noise/Defcon;

.field private m:J

.field private n:I

.field private o:I

.field private s:Landroid/content/Context;

.field private t:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 57
    iput v0, p0, Lcom/umeng/commonsdk/statistics/d;->e:I

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/d;->i:Lcom/umeng/commonsdk/statistics/idtracking/g$a;

    .line 69
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/d;->j:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    .line 70
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/d;->k:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    .line 71
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/d;->l:Lcom/umeng/commonsdk/statistics/noise/Defcon;

    const-wide/16 v1, 0x0

    .line 72
    iput-wide v1, p0, Lcom/umeng/commonsdk/statistics/d;->m:J

    const/4 v3, 0x0

    .line 73
    iput v3, p0, Lcom/umeng/commonsdk/statistics/d;->n:I

    .line 74
    iput v3, p0, Lcom/umeng/commonsdk/statistics/d;->o:I

    .line 75
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/d;->a:Ljava/lang/String;

    .line 230
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/d;->t:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    .line 84
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    .line 87
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/idtracking/g;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/idtracking/g;->b()Lcom/umeng/commonsdk/statistics/idtracking/g$a;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->i:Lcom/umeng/commonsdk/statistics/idtracking/g$a;

    .line 89
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->j:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    .line 90
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/Defcon;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->l:Lcom/umeng/commonsdk/statistics/noise/Defcon;

    .line 91
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    iget-object v4, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->getService(Landroid/content/Context;Lcom/umeng/commonsdk/statistics/internal/StatTracer;)Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->k:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    .line 92
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v4, "thtstart"

    .line 93
    invoke-interface {p1, v4, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/umeng/commonsdk/statistics/d;->m:J

    const-string v1, "gkvc"

    .line 94
    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/umeng/commonsdk/statistics/d;->n:I

    const-string v1, "ekvc"

    .line 95
    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/umeng/commonsdk/statistics/d;->o:I

    .line 97
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    const-string v1, "track_list"

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->a:Ljava/lang/String;

    .line 100
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/idtracking/g;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/g;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->g:Lcom/umeng/commonsdk/statistics/idtracking/g;

    .line 101
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->g:Lcom/umeng/commonsdk/statistics/idtracking/g;

    new-instance v0, Lcom/umeng/commonsdk/statistics/d$1;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/statistics/d$1;-><init>(Lcom/umeng/commonsdk/statistics/d;)V

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/statistics/idtracking/g;->a(Lcom/umeng/commonsdk/statistics/internal/d;)V

    .line 130
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/e;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->h:Lcom/umeng/commonsdk/statistics/idtracking/e;

    .line 131
    new-instance p1, Lcom/umeng/commonsdk/statistics/internal/c;

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/umeng/commonsdk/statistics/internal/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->f:Lcom/umeng/commonsdk/statistics/internal/c;

    .line 132
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->f:Lcom/umeng/commonsdk/statistics/internal/c;

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/statistics/internal/c;->a(Lcom/umeng/commonsdk/statistics/internal/b;)V

    return-void
.end method

.method private a([B)I
    .locals 3

    .line 205
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/Response;

    invoke-direct {v0}, Lcom/umeng/commonsdk/statistics/proto/Response;-><init>()V

    .line 206
    new-instance v1, Lcom/umeng/commonsdk/proguard/ad;

    new-instance v2, Lcom/umeng/commonsdk/proguard/as$a;

    invoke-direct {v2}, Lcom/umeng/commonsdk/proguard/as$a;-><init>()V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/proguard/ad;-><init>(Lcom/umeng/commonsdk/proguard/bb;)V

    const/4 v2, 0x1

    .line 210
    :try_start_0
    invoke-virtual {v1, v0, p1}, Lcom/umeng/commonsdk/proguard/ad;->a(Lcom/umeng/commonsdk/proguard/aa;[B)V

    .line 212
    iget p1, v0, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    if-ne p1, v2, :cond_0

    .line 213
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->g:Lcom/umeng/commonsdk/statistics/idtracking/g;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/proto/Response;->getImprint()Lcom/umeng/commonsdk/statistics/proto/d;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/umeng/commonsdk/statistics/idtracking/g;->b(Lcom/umeng/commonsdk/statistics/proto/d;)V

    .line 214
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->g:Lcom/umeng/commonsdk/statistics/idtracking/g;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/idtracking/g;->c()V

    .line 217
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send log:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/proto/Response;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 220
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 223
    :goto_0
    iget p1, v0, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    if-ne p1, v2, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x3

    return p1
.end method

.method static synthetic a(Lcom/umeng/commonsdk/statistics/d;)Lcom/umeng/commonsdk/statistics/noise/ABTest;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/umeng/commonsdk/statistics/d;->j:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    return-object p0
.end method

.method static synthetic b(Lcom/umeng/commonsdk/statistics/d;)Lcom/umeng/commonsdk/statistics/noise/Defcon;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/umeng/commonsdk/statistics/d;->l:Lcom/umeng/commonsdk/statistics/noise/Defcon;

    return-object p0
.end method

.method static synthetic c(Lcom/umeng/commonsdk/statistics/d;)Lcom/umeng/commonsdk/statistics/noise/ImLatent;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/umeng/commonsdk/statistics/d;->k:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    return-object p0
.end method

.method static synthetic d(Lcom/umeng/commonsdk/statistics/d;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 5

    .line 238
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/d;->l:Lcom/umeng/commonsdk/statistics/noise/Defcon;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->isOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/d;->t:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$LatentPolicy;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/d;->t:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/d;->k:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->shouldStartLatency()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    new-instance v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$LatentPolicy;

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/d;->k:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->getDelayTime()J

    move-result-wide v3

    long-to-int v1, v3

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$LatentPolicy;-><init>(I)V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/d;->t:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    return v2

    :cond_1
    return v1
.end method

.method public a(Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 156
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/framework/b;->a(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 165
    :cond_1
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/internal/a;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/a;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/commonsdk/statistics/internal/a;->b(Ljava/lang/String;)V

    .line 166
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/internal/a;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/a;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/umeng/commonsdk/statistics/internal/a;->a(Ljava/lang/String;)Z

    move-result p1

    .line 168
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/d;->f:Lcom/umeng/commonsdk/statistics/internal/c;

    invoke-virtual {v2, v1, p1}, Lcom/umeng/commonsdk/statistics/internal/c;->a([BZ)[B

    move-result-object p1

    const/4 v1, 0x1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    .line 172
    :cond_2
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/d;->a([B)I

    move-result p1

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 183
    :pswitch_0
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->saveSate()V

    goto :goto_1

    .line 177
    :pswitch_1
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/d;->h:Lcom/umeng/commonsdk/statistics/idtracking/e;

    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->d()V

    .line 179
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->saveSate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :pswitch_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    return v1

    :cond_3
    return v0

    :catch_0
    move-exception p1

    .line 198
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()I
    .locals 6

    .line 256
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/d;->k:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->getDelayTime()J

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getLastReqTime()J

    move-result-wide v2

    sub-long v4, v0, v2

    long-to-int v0, v4

    return v0
.end method

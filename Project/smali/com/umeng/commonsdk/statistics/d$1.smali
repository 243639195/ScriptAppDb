.class Lcom/umeng/commonsdk/statistics/d$1;
.super Ljava/lang/Object;
.source "NetWorkManager.java"

# interfaces
.implements Lcom/umeng/commonsdk/statistics/internal/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/statistics/d;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/commonsdk/statistics/d;


# direct methods
.method constructor <init>(Lcom/umeng/commonsdk/statistics/d;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/d$1;->a:Lcom/umeng/commonsdk/statistics/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImprintChanged(Lcom/umeng/commonsdk/statistics/idtracking/g$a;)V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/d$1;->a:Lcom/umeng/commonsdk/statistics/d;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/d;->a(Lcom/umeng/commonsdk/statistics/d;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->onImprintChanged(Lcom/umeng/commonsdk/statistics/idtracking/g$a;)V

    .line 106
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/d$1;->a:Lcom/umeng/commonsdk/statistics/d;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/d;->b(Lcom/umeng/commonsdk/statistics/d;)Lcom/umeng/commonsdk/statistics/noise/Defcon;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->onImprintChanged(Lcom/umeng/commonsdk/statistics/idtracking/g$a;)V

    .line 107
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/d$1;->a:Lcom/umeng/commonsdk/statistics/d;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/d;->c(Lcom/umeng/commonsdk/statistics/d;)Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->onImprintChanged(Lcom/umeng/commonsdk/statistics/idtracking/g$a;)V

    .line 110
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/d$1;->a:Lcom/umeng/commonsdk/statistics/d;

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/d$1;->a:Lcom/umeng/commonsdk/statistics/d;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/d;->d(Lcom/umeng/commonsdk/statistics/d;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "track_list"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/umeng/commonsdk/statistics/d;->a:Ljava/lang/String;

    .line 114
    :try_start_0
    new-instance p1, Lcom/umeng/commonsdk/proguard/q;

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/d$1;->a:Lcom/umeng/commonsdk/statistics/d;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/d;->d(Lcom/umeng/commonsdk/statistics/d;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/umeng/commonsdk/proguard/q;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_1

    .line 116
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/d$1;->a:Lcom/umeng/commonsdk/statistics/d;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/d;->d(Lcom/umeng/commonsdk/statistics/d;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "umtt"

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/q;->g()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 119
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    :cond_0
    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/q;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

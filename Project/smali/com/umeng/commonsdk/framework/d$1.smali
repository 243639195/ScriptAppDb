.class final Lcom/umeng/commonsdk/framework/d$1;
.super Landroid/content/BroadcastReceiver;
.source "UMNetWorkSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/framework/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/commonsdk/framework/d$1$1;

    invoke-direct {v1, p0, p1}, Lcom/umeng/commonsdk/framework/d$1$1;-><init>(Lcom/umeng/commonsdk/framework/d$1;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 64
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 66
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 67
    invoke-static {}, Lcom/umeng/commonsdk/framework/c;->a()Landroid/content/Context;

    move-result-object p1

    const-string p2, "connectivity"

    .line 68
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    invoke-static {p2}, Lcom/umeng/commonsdk/framework/d;->a(Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;

    .line 70
    :try_start_0
    invoke-static {}, Lcom/umeng/commonsdk/framework/d;->d()Landroid/net/ConnectivityManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p2

    invoke-static {p2}, Lcom/umeng/commonsdk/framework/d;->a(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 71
    invoke-static {}, Lcom/umeng/commonsdk/framework/d;->e()Landroid/net/NetworkInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/umeng/commonsdk/framework/d;->e()Landroid/net/NetworkInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "--->>> network isAvailable, check if there are any files to send."

    .line 72
    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 73
    invoke-static {p2}, Lcom/umeng/commonsdk/framework/d;->a(Z)Z

    const/16 v0, 0x111

    .line 74
    invoke-static {v0}, Lcom/umeng/commonsdk/framework/d;->a(I)V

    .line 75
    invoke-static {}, Lcom/umeng/commonsdk/framework/d;->e()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, p2, :cond_1

    const-string p2, "--->>> wifi connection available, send uop packet now."

    .line 78
    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;)V

    .line 80
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/umeng/commonsdk/framework/d$1$2;

    invoke-direct {v0, p0, p1}, Lcom/umeng/commonsdk/framework/d$1$2;-><init>(Lcom/umeng/commonsdk/framework/d$1;Landroid/content/Context;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 89
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    const-string p2, "--->>> network disconnected."

    .line 93
    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 94
    invoke-static {p2}, Lcom/umeng/commonsdk/framework/d;->a(Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 97
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.class Lcom/iflytek/collector/a/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/collector/a/a/g$a;


# instance fields
.field final synthetic a:Lcom/iflytek/collector/a/a/i;


# direct methods
.method constructor <init>(Lcom/iflytek/collector/a/a/i;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/collector/a/a/j;->a:Lcom/iflytek/collector/a/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/collector/a/a/g;[B)V
    .locals 1

    if-eqz p2, :cond_0

    :try_start_0
    new-instance p1, Ljava/lang/String;

    const-string v0, "utf-8"

    invoke-direct {p1, p2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {p1}, Lcom/iflytek/collector/a/a/g;->a(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "Collector"

    const-string v0, "upload success"

    invoke-static {p2, v0}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/iflytek/collector/a/a/j;->a:Lcom/iflytek/collector/a/a/i;

    invoke-static {p2, p1}, Lcom/iflytek/collector/a/a/i;->a(Lcom/iflytek/collector/a/a/i;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/iflytek/collector/a/a/j;->a(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "Collector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/iflytek/voiceads/config/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

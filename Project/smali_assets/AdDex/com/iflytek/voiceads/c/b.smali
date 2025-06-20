.class Lcom/iflytek/voiceads/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/voiceads/request/a$a;


# instance fields
.field final synthetic a:Lcom/iflytek/voiceads/c/a;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/c/b;->a:Lcom/iflytek/voiceads/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;I)V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/voiceads/c/b;->a:Lcom/iflytek/voiceads/c/a;

    invoke-static {v0}, Lcom/iflytek/voiceads/c/a;->b(Lcom/iflytek/voiceads/c/a;)Lcom/iflytek/voiceads/c/d;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/iflytek/voiceads/config/AdError;

    invoke-direct {v2, p2}, Lcom/iflytek/voiceads/config/AdError;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/voiceads/c/d;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public a([B)V
    .locals 6

    const/4 v5, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/voiceads/c/b;->a:Lcom/iflytek/voiceads/c/a;

    invoke-static {v0}, Lcom/iflytek/voiceads/c/a;->a(Lcom/iflytek/voiceads/c/a;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/c/b;->a:Lcom/iflytek/voiceads/c/a;

    invoke-static {v0}, Lcom/iflytek/voiceads/c/a;->a(Lcom/iflytek/voiceads/c/a;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/c/b;->a:Lcom/iflytek/voiceads/c/a;

    invoke-static {v0}, Lcom/iflytek/voiceads/c/a;->b(Lcom/iflytek/voiceads/c/a;)Lcom/iflytek/voiceads/c/d;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/iflytek/voiceads/config/AdError;

    const v3, 0x11561

    invoke-direct {v2, v3}, Lcom/iflytek/voiceads/config/AdError;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/voiceads/c/d;->a(ILjava/lang/Object;)V

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "activity is finishing"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/voiceads/c/b;->a:Lcom/iflytek/voiceads/c/a;

    invoke-static {v1}, Lcom/iflytek/voiceads/c/a;->c(Lcom/iflytek/voiceads/c/a;)Lcom/iflytek/voiceads/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/voiceads/d/b;->a(Ljava/lang/String;)V

    const v0, 0x11238

    iget-object v1, p0, Lcom/iflytek/voiceads/c/b;->a:Lcom/iflytek/voiceads/c/a;

    invoke-static {v1}, Lcom/iflytek/voiceads/c/a;->c(Lcom/iflytek/voiceads/c/a;)Lcom/iflytek/voiceads/d/b;

    move-result-object v1

    iget v1, v1, Lcom/iflytek/voiceads/d/b;->a:I

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/iflytek/voiceads/c/c;

    iget-object v1, p0, Lcom/iflytek/voiceads/c/b;->a:Lcom/iflytek/voiceads/c/a;

    invoke-static {v1}, Lcom/iflytek/voiceads/c/a;->a(Lcom/iflytek/voiceads/c/a;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/voiceads/c/b;->a:Lcom/iflytek/voiceads/c/a;

    invoke-static {v2}, Lcom/iflytek/voiceads/c/a;->c(Lcom/iflytek/voiceads/c/a;)Lcom/iflytek/voiceads/d/b;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/voiceads/c/b;->a:Lcom/iflytek/voiceads/c/a;

    invoke-static {v3}, Lcom/iflytek/voiceads/c/a;->d(Lcom/iflytek/voiceads/c/a;)Lcom/iflytek/voiceads/param/a;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/voiceads/c/b;->a:Lcom/iflytek/voiceads/c/a;

    invoke-static {v4}, Lcom/iflytek/voiceads/c/a;->e(Lcom/iflytek/voiceads/c/a;)Lcom/iflytek/voiceads/listener/IFLYNativeListener;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iflytek/voiceads/c/c;-><init>(Landroid/content/Context;Lcom/iflytek/voiceads/d/b;Lcom/iflytek/voiceads/param/a;Lcom/iflytek/voiceads/listener/IFLYNativeListener;)V

    iget-object v1, p0, Lcom/iflytek/voiceads/c/b;->a:Lcom/iflytek/voiceads/c/a;

    invoke-static {v1}, Lcom/iflytek/voiceads/c/a;->b(Lcom/iflytek/voiceads/c/a;)Lcom/iflytek/voiceads/c/d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/iflytek/voiceads/c/d;->a(ILjava/lang/Object;)V
    :try_end_0
    .catch Lcom/iflytek/voiceads/config/AdError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/iflytek/voiceads/c/b;->a:Lcom/iflytek/voiceads/c/a;

    invoke-static {v1}, Lcom/iflytek/voiceads/c/a;->b(Lcom/iflytek/voiceads/c/a;)Lcom/iflytek/voiceads/c/d;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Lcom/iflytek/voiceads/c/d;->a(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/voiceads/c/b;->a:Lcom/iflytek/voiceads/c/a;

    invoke-static {v0}, Lcom/iflytek/voiceads/c/a;->b(Lcom/iflytek/voiceads/c/a;)Lcom/iflytek/voiceads/c/d;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/iflytek/voiceads/config/AdError;

    iget-object v3, p0, Lcom/iflytek/voiceads/c/b;->a:Lcom/iflytek/voiceads/c/a;

    invoke-static {v3}, Lcom/iflytek/voiceads/c/a;->c(Lcom/iflytek/voiceads/c/a;)Lcom/iflytek/voiceads/d/b;

    move-result-object v3

    iget v3, v3, Lcom/iflytek/voiceads/d/b;->a:I

    invoke-direct {v2, v3}, Lcom/iflytek/voiceads/config/AdError;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/voiceads/c/d;->a(ILjava/lang/Object;)V
    :try_end_1
    .catch Lcom/iflytek/voiceads/config/AdError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/iflytek/voiceads/c/b;->a:Lcom/iflytek/voiceads/c/a;

    invoke-static {v1}, Lcom/iflytek/voiceads/c/a;->b(Lcom/iflytek/voiceads/c/a;)Lcom/iflytek/voiceads/c/d;

    move-result-object v1

    new-instance v2, Lcom/iflytek/voiceads/config/AdError;

    const v3, 0x1155b

    invoke-direct {v2, v3}, Lcom/iflytek/voiceads/config/AdError;-><init>(I)V

    invoke-virtual {v1, v5, v2}, Lcom/iflytek/voiceads/c/d;->a(ILjava/lang/Object;)V

    const-string v1, "IFLY_AD_SDK"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

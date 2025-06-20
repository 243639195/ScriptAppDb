.class public Lcom/iflytek/voiceads/e/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

.field b:Lcom/iflytek/voiceads/request/a$a;

.field private c:Lcom/iflytek/voiceads/param/a;

.field private d:Landroid/content/Context;

.field private e:Lcom/iflytek/voiceads/d/b;

.field private f:Lcom/iflytek/voiceads/d/a;

.field private g:Lcom/iflytek/voiceads/listener/IFLYVideoListener;

.field private h:Lcom/iflytek/voiceads/e/f;

.field private i:I

.field private j:Lcom/iflytek/voiceads/e/g;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/iflytek/voiceads/listener/IFLYVideoListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/iflytek/voiceads/e/b;

    invoke-direct {v0, p0}, Lcom/iflytek/voiceads/e/b;-><init>(Lcom/iflytek/voiceads/e/a;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/e/a;->b:Lcom/iflytek/voiceads/request/a$a;

    iput-object p1, p0, Lcom/iflytek/voiceads/e/a;->d:Landroid/content/Context;

    iput-object p4, p0, Lcom/iflytek/voiceads/e/a;->g:Lcom/iflytek/voiceads/listener/IFLYVideoListener;

    iput p3, p0, Lcom/iflytek/voiceads/e/a;->i:I

    new-instance v0, Lcom/iflytek/voiceads/param/a;

    invoke-direct {v0, p2}, Lcom/iflytek/voiceads/param/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/e/a;->c:Lcom/iflytek/voiceads/param/a;

    new-instance v0, Lcom/iflytek/voiceads/d/b;

    iget-object v1, p0, Lcom/iflytek/voiceads/e/a;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/voiceads/d/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/e/a;->e:Lcom/iflytek/voiceads/d/b;

    new-instance v0, Lcom/iflytek/voiceads/e/f;

    invoke-direct {v0}, Lcom/iflytek/voiceads/e/f;-><init>()V

    iput-object v0, p0, Lcom/iflytek/voiceads/e/a;->h:Lcom/iflytek/voiceads/e/f;

    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->h:Lcom/iflytek/voiceads/e/f;

    iget-object v1, p0, Lcom/iflytek/voiceads/e/a;->g:Lcom/iflytek/voiceads/listener/IFLYVideoListener;

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/e/f;->a(Lcom/iflytek/voiceads/listener/IFLYVideoListener;)V

    new-instance v0, Lcom/iflytek/voiceads/videolib/JZVPStandard;

    invoke-direct {v0, p1}, Lcom/iflytek/voiceads/videolib/JZVPStandard;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/voiceads/e/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/voiceads/e/a;Lcom/iflytek/voiceads/d/a;)Lcom/iflytek/voiceads/d/a;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/e/a;->f:Lcom/iflytek/voiceads/d/a;

    return-object p1
.end method

.method static synthetic a(Lcom/iflytek/voiceads/e/a;Lcom/iflytek/voiceads/e/g;)Lcom/iflytek/voiceads/e/g;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/e/a;->j:Lcom/iflytek/voiceads/e/g;

    return-object p1
.end method

.method static synthetic a(Lcom/iflytek/voiceads/e/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/e/a;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/iflytek/voiceads/e/a;)Lcom/iflytek/voiceads/e/f;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->h:Lcom/iflytek/voiceads/e/f;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/voiceads/e/a;)Lcom/iflytek/voiceads/d/b;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->e:Lcom/iflytek/voiceads/d/b;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/voiceads/e/a;)Lcom/iflytek/voiceads/d/a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->f:Lcom/iflytek/voiceads/d/a;

    return-object v0
.end method

.method static synthetic e(Lcom/iflytek/voiceads/e/a;)Lcom/iflytek/voiceads/param/a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->c:Lcom/iflytek/voiceads/param/a;

    return-object v0
.end method

.method static synthetic f(Lcom/iflytek/voiceads/e/a;)Lcom/iflytek/voiceads/listener/IFLYVideoListener;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->g:Lcom/iflytek/voiceads/listener/IFLYVideoListener;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/voiceads/e/a;->c:Lcom/iflytek/voiceads/param/a;

    iget-object v2, p0, Lcom/iflytek/voiceads/e/a;->b:Lcom/iflytek/voiceads/request/a$a;

    invoke-static {v0, v1, v2}, Lcom/iflytek/voiceads/request/f;->a(Landroid/content/Context;Lcom/iflytek/voiceads/param/a;Lcom/iflytek/voiceads/request/a$a;)V
    :try_end_0
    .catch Lcom/iflytek/voiceads/config/AdError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/iflytek/voiceads/e/a;->h:Lcom/iflytek/voiceads/e/f;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/iflytek/voiceads/e/f;->a(ILjava/lang/Object;)V

    const-string v1, "IFLY_AD_SDK"

    invoke-virtual {v0}, Lcom/iflytek/voiceads/config/AdError;->getErrorDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    const-string v1, "IFLY_AD_SDK"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->c:Lcom/iflytek/voiceads/param/a;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/voiceads/param/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    invoke-virtual {v0, p1}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->b(Z)V

    goto :goto_0
.end method

.method public varargs a([Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    iget-object v1, p0, Lcom/iflytek/voiceads/e/a;->j:Lcom/iflytek/voiceads/e/g;

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->a(Lcom/iflytek/voiceads/e/g;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    iget-object v1, p0, Lcom/iflytek/voiceads/e/a;->c:Lcom/iflytek/voiceads/param/a;

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->a(Lcom/iflytek/voiceads/param/a;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    iget-object v1, p0, Lcom/iflytek/voiceads/e/a;->g:Lcom/iflytek/voiceads/listener/IFLYVideoListener;

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->a(Lcom/iflytek/voiceads/listener/IFLYVideoListener;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    iget v1, p0, Lcom/iflytek/voiceads/e/a;->i:I

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->a(I)V

    iget v0, p0, Lcom/iflytek/voiceads/e/a;->i:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/iflytek/voiceads/e/a;->c()V

    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    iget-object v1, p0, Lcom/iflytek/voiceads/e/a;->k:Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->a(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video show ad"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/voiceads/e/a;->d:Landroid/content/Context;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/videolib/n;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    iget-object v1, p0, Lcom/iflytek/voiceads/e/a;->k:Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->a(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    iget-object v0, v0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->f:Lcom/iflytek/voiceads/d/a;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/voiceads/e/a;->f:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->j:Lorg/json/JSONObject;

    new-instance v2, Lcom/iflytek/voiceads/e/c;

    invoke-direct {v2, p0}, Lcom/iflytek/voiceads/e/c;-><init>(Lcom/iflytek/voiceads/e/a;)V

    invoke-static {v0, v1, v2}, Lcom/iflytek/voiceads/download/p;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/iflytek/voiceads/download/p$a;)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    invoke-virtual {v0, p1}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->a(Z)V

    goto :goto_0
.end method

.method public c()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->j:Lcom/iflytek/voiceads/e/g;

    iget-object v0, v0, Lcom/iflytek/voiceads/e/g;->h:Lorg/json/JSONObject;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/iflytek/voiceads/b/a;

    iget-object v2, p0, Lcom/iflytek/voiceads/e/a;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/iflytek/voiceads/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/voiceads/e/d;

    invoke-direct {v0, p0}, Lcom/iflytek/voiceads/e/d;-><init>(Lcom/iflytek/voiceads/e/a;)V

    invoke-virtual {v1, v0}, Lcom/iflytek/voiceads/b/a;->a(Lcom/iflytek/voiceads/b/a$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadCoverImg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    invoke-virtual {v0, p1}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->c(Z)V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    iget-object v0, v0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    goto :goto_0
.end method

.method public e()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->f()V

    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->a(Lcom/iflytek/voiceads/listener/IFLYVideoListener;)V

    iput-object v1, p0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    goto :goto_0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->h()V

    goto :goto_0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->e()V

    goto :goto_0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->d()V

    goto :goto_0
.end method

.method public i()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    iget v1, v1, Lcom/iflytek/voiceads/videolib/JZVPStandard;->g:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/iflytek/voiceads/videolib/JZPlayer;->b()Z

    move-result v0

    goto :goto_0
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->i()V

    goto :goto_0
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->j()V

    goto :goto_0
.end method

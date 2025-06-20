.class public abstract Lcom/iflytek/voiceads/view/AdView;
.super Landroid/webkit/WebView;

# interfaces
.implements Lcom/iflytek/voiceads/view/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/voiceads/view/AdView$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/widget/RelativeLayout;

.field protected c:Lcom/iflytek/voiceads/f/b;

.field protected d:Lcom/iflytek/voiceads/f/a;

.field protected e:Lcom/iflytek/voiceads/param/a;

.field protected f:Lcom/iflytek/voiceads/d/b;

.field protected g:Lcom/iflytek/voiceads/d/a;

.field protected h:Lcom/iflytek/voiceads/utils/a$a;

.field protected i:Lcom/iflytek/voiceads/utils/a$b;

.field protected j:Lcom/iflytek/voiceads/listener/IFLYAdListener;

.field protected k:Lcom/iflytek/voiceads/listener/InternalListener;

.field protected l:Lcom/iflytek/voiceads/view/b;

.field protected m:Landroid/os/HandlerThread;

.field protected n:Lcom/iflytek/voiceads/view/a;

.field protected o:Lcom/iflytek/voiceads/view/AdView$a;

.field protected p:I

.field q:Lcom/iflytek/voiceads/request/a$a;

.field r:Lcom/iflytek/voiceads/f/d;

.field s:Lcom/iflytek/voiceads/f/c;

.field private t:I

.field private u:Z

.field private final v:I

.field private final w:I

.field private final x:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/iflytek/voiceads/utils/a$b;->a:Lcom/iflytek/voiceads/utils/a$b;

    iput-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->i:Lcom/iflytek/voiceads/utils/a$b;

    iput v1, p0, Lcom/iflytek/voiceads/view/AdView;->p:I

    iput v1, p0, Lcom/iflytek/voiceads/view/AdView;->t:I

    new-instance v0, Lcom/iflytek/voiceads/view/c;

    invoke-direct {v0, p0}, Lcom/iflytek/voiceads/view/c;-><init>(Lcom/iflytek/voiceads/view/AdView;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->q:Lcom/iflytek/voiceads/request/a$a;

    iput-boolean v1, p0, Lcom/iflytek/voiceads/view/AdView;->u:Z

    new-instance v0, Lcom/iflytek/voiceads/view/d;

    invoke-direct {v0, p0}, Lcom/iflytek/voiceads/view/d;-><init>(Lcom/iflytek/voiceads/view/AdView;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->r:Lcom/iflytek/voiceads/f/d;

    new-instance v0, Lcom/iflytek/voiceads/view/e;

    invoke-direct {v0, p0}, Lcom/iflytek/voiceads/view/e;-><init>(Lcom/iflytek/voiceads/view/AdView;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->s:Lcom/iflytek/voiceads/f/c;

    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/voiceads/view/AdView;->v:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/voiceads/view/AdView;->w:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/voiceads/view/AdView;->x:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Ljava/lang/String;Lcom/iflytek/voiceads/utils/a$a;Lcom/iflytek/voiceads/listener/InternalListener;)V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/iflytek/voiceads/utils/a$b;->a:Lcom/iflytek/voiceads/utils/a$b;

    iput-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->i:Lcom/iflytek/voiceads/utils/a$b;

    iput v1, p0, Lcom/iflytek/voiceads/view/AdView;->p:I

    iput v1, p0, Lcom/iflytek/voiceads/view/AdView;->t:I

    new-instance v0, Lcom/iflytek/voiceads/view/c;

    invoke-direct {v0, p0}, Lcom/iflytek/voiceads/view/c;-><init>(Lcom/iflytek/voiceads/view/AdView;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->q:Lcom/iflytek/voiceads/request/a$a;

    iput-boolean v1, p0, Lcom/iflytek/voiceads/view/AdView;->u:Z

    new-instance v0, Lcom/iflytek/voiceads/view/d;

    invoke-direct {v0, p0}, Lcom/iflytek/voiceads/view/d;-><init>(Lcom/iflytek/voiceads/view/AdView;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->r:Lcom/iflytek/voiceads/f/d;

    new-instance v0, Lcom/iflytek/voiceads/view/e;

    invoke-direct {v0, p0}, Lcom/iflytek/voiceads/view/e;-><init>(Lcom/iflytek/voiceads/view/AdView;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->s:Lcom/iflytek/voiceads/f/c;

    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/voiceads/view/AdView;->v:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/voiceads/view/AdView;->w:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/voiceads/view/AdView;->x:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/iflytek/voiceads/view/AdView;->b:Landroid/widget/RelativeLayout;

    iput-object p4, p0, Lcom/iflytek/voiceads/view/AdView;->h:Lcom/iflytek/voiceads/utils/a$a;

    iput-object p5, p0, Lcom/iflytek/voiceads/view/AdView;->k:Lcom/iflytek/voiceads/listener/InternalListener;

    new-instance v0, Lcom/iflytek/voiceads/view/AdView$a;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/iflytek/voiceads/view/AdView$a;-><init>(Lcom/iflytek/voiceads/view/AdView;Landroid/os/Looper;Lcom/iflytek/voiceads/view/c;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->o:Lcom/iflytek/voiceads/view/AdView$a;

    new-instance v0, Lcom/iflytek/voiceads/d/b;

    iget-object v1, p0, Lcom/iflytek/voiceads/view/AdView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/voiceads/d/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->f:Lcom/iflytek/voiceads/d/b;

    new-instance v0, Lcom/iflytek/voiceads/param/a;

    invoke-direct {v0, p3}, Lcom/iflytek/voiceads/param/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->e:Lcom/iflytek/voiceads/param/a;

    invoke-direct {p0}, Lcom/iflytek/voiceads/view/AdView;->n()V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/voiceads/view/AdView;I)I
    .locals 0

    iput p1, p0, Lcom/iflytek/voiceads/view/AdView;->t:I

    return p1
.end method

.method static synthetic a(Lcom/iflytek/voiceads/view/AdView;)Lcom/iflytek/voiceads/utils/a$b;
    .locals 1

    invoke-direct {p0}, Lcom/iflytek/voiceads/view/AdView;->q()Lcom/iflytek/voiceads/utils/a$b;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(Lcom/iflytek/voiceads/utils/a$b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/iflytek/voiceads/view/AdView;->i:Lcom/iflytek/voiceads/utils/a$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/iflytek/voiceads/view/AdView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/voiceads/config/AdError;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/iflytek/voiceads/view/AdView;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/voiceads/view/AdView;)I
    .locals 1

    iget v0, p0, Lcom/iflytek/voiceads/view/AdView;->t:I

    return v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/voiceads/config/AdError;
        }
    .end annotation

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->f:Lcom/iflytek/voiceads/d/b;

    invoke-virtual {v0, p1}, Lcom/iflytek/voiceads/d/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->f:Lcom/iflytek/voiceads/d/b;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/b;->f:Lcom/iflytek/voiceads/d/a;

    iput-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->g:Lcom/iflytek/voiceads/d/a;

    const v0, 0x11238

    iget-object v1, p0, Lcom/iflytek/voiceads/view/AdView;->f:Lcom/iflytek/voiceads/d/b;

    iget v1, v1, Lcom/iflytek/voiceads/d/b;->a:I

    if-ne v0, v1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->g:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->e:Lorg/json/JSONObject;

    const-string v1, "width"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/voiceads/view/AdView;->g:Lcom/iflytek/voiceads/d/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/d/a;->e:Lorg/json/JSONObject;

    const-string v2, "height"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-lez v0, :cond_0

    if-gtz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->l:Lcom/iflytek/voiceads/view/b;

    const/4 v1, 0x5

    const v2, 0x1155f

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/voiceads/view/b;->a(II)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/iflytek/voiceads/view/AdView;->e:Lcom/iflytek/voiceads/param/a;

    invoke-virtual {v2, v0}, Lcom/iflytek/voiceads/param/a;->a(I)V

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->e:Lcom/iflytek/voiceads/param/a;

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/param/a;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->l:Lcom/iflytek/voiceads/view/b;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/iflytek/voiceads/view/AdView;->f:Lcom/iflytek/voiceads/d/b;

    iget v2, v2, Lcom/iflytek/voiceads/d/b;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/voiceads/view/b;->a(II)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "html parse2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->l:Lcom/iflytek/voiceads/view/b;

    iget-object v1, p0, Lcom/iflytek/voiceads/view/AdView;->f:Lcom/iflytek/voiceads/d/b;

    iget v1, v1, Lcom/iflytek/voiceads/d/b;->a:I

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/voiceads/view/b;->a(II)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/iflytek/voiceads/view/AdView;)I
    .locals 2

    iget v0, p0, Lcom/iflytek/voiceads/view/AdView;->t:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/iflytek/voiceads/view/AdView;->t:I

    return v0
.end method

.method static synthetic d(Lcom/iflytek/voiceads/view/AdView;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/voiceads/view/AdView;->p()V

    return-void
.end method

.method private n()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/iflytek/voiceads/view/AdView;->setScrollContainer(Z)V

    invoke-virtual {p0, v2}, Lcom/iflytek/voiceads/view/AdView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/iflytek/voiceads/view/AdView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/view/AdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v0, Lcom/iflytek/voiceads/view/b;

    invoke-direct {p0}, Lcom/iflytek/voiceads/view/AdView;->o()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/iflytek/voiceads/view/b;-><init>(Landroid/os/Looper;Lcom/iflytek/voiceads/view/b$a;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->l:Lcom/iflytek/voiceads/view/b;

    new-instance v0, Lcom/iflytek/voiceads/view/a;

    invoke-direct {v0}, Lcom/iflytek/voiceads/view/a;-><init>()V

    iput-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->n:Lcom/iflytek/voiceads/view/a;

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->n:Lcom/iflytek/voiceads/view/a;

    iget-object v1, p0, Lcom/iflytek/voiceads/view/AdView;->k:Lcom/iflytek/voiceads/listener/InternalListener;

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/view/a;->a(Lcom/iflytek/voiceads/listener/InternalListener;)V

    invoke-virtual {p0, v2}, Lcom/iflytek/voiceads/view/AdView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/view/AdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/voiceads/view/AdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/voiceads/view/AdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/iflytek/voiceads/view/AdView;->a(I)V

    new-instance v0, Lcom/iflytek/voiceads/f/b;

    iget-object v1, p0, Lcom/iflytek/voiceads/view/AdView;->r:Lcom/iflytek/voiceads/f/d;

    invoke-direct {v0, v1}, Lcom/iflytek/voiceads/f/b;-><init>(Lcom/iflytek/voiceads/f/d;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->c:Lcom/iflytek/voiceads/f/b;

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->c:Lcom/iflytek/voiceads/f/b;

    invoke-virtual {p0, v0}, Lcom/iflytek/voiceads/view/AdView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/iflytek/voiceads/f/a;

    iget-object v1, p0, Lcom/iflytek/voiceads/view/AdView;->s:Lcom/iflytek/voiceads/f/c;

    invoke-direct {v0, v1}, Lcom/iflytek/voiceads/f/a;-><init>(Lcom/iflytek/voiceads/f/c;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->d:Lcom/iflytek/voiceads/f/a;

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->d:Lcom/iflytek/voiceads/f/a;

    invoke-virtual {p0, v0}, Lcom/iflytek/voiceads/view/AdView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method private o()Landroid/os/HandlerThread;
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/voiceads/view/AdView;->h:Lcom/iflytek/voiceads/utils/a$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->m:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->m:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->m:Landroid/os/HandlerThread;

    return-object v0
.end method

.method private declared-synchronized p()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/iflytek/voiceads/utils/a$b;->b:Lcom/iflytek/voiceads/utils/a$b;

    invoke-direct {p0, v0}, Lcom/iflytek/voiceads/view/AdView;->a(Lcom/iflytek/voiceads/utils/a$b;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget-object v1, p0, Lcom/iflytek/voiceads/view/AdView;->f:Lcom/iflytek/voiceads/d/b;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/iflytek/voiceads/view/AdView;->o:Lcom/iflytek/voiceads/view/AdView$a;

    invoke-virtual {v1, v0}, Lcom/iflytek/voiceads/view/AdView$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/iflytek/voiceads/view/AdView;->l:Lcom/iflytek/voiceads/view/b;

    const/4 v2, 0x5

    const v3, 0x1155f

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/voiceads/view/b;->a(II)V

    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ShowAd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized q()Lcom/iflytek/voiceads/utils/a$b;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->i:Lcom/iflytek/voiceads/utils/a$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private r()V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->n:Lcom/iflytek/voiceads/view/a;

    invoke-virtual {v0, v2}, Lcom/iflytek/voiceads/view/a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "\u79fb\u9664\u5173\u95ed\u5e7f\u544amsg"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->n:Lcom/iflytek/voiceads/view/a;

    invoke-virtual {v0, v2}, Lcom/iflytek/voiceads/view/a;->removeMessages(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/voiceads/view/AdView;->u:Z

    :cond_0
    return-void
.end method

.method private s()V
    .locals 3

    iget-boolean v0, p0, Lcom/iflytek/voiceads/view/AdView;->u:Z

    if-eqz v0, :cond_0

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "\u6dfb\u52a0\u5173\u95ed\u5e7f\u544amsg"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->n:Lcom/iflytek/voiceads/view/a;

    const/4 v1, 0x4

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/voiceads/view/a;->a(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/voiceads/view/AdView;->p()V

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->b:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/iflytek/voiceads/view/AdView;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/iflytek/voiceads/view/AdView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/voiceads/view/AdView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected a(II)V
    .locals 2

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "AdView setLayoutParam()"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/voiceads/view/AdView;->b(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/voiceads/view/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/voiceads/view/AdView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/iflytek/voiceads/view/AdView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x5

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/iflytek/voiceads/view/AdView;->d(Landroid/os/Message;)V
    :try_end_0
    .catch Lcom/iflytek/voiceads/config/AdError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/iflytek/voiceads/view/AdView;->l:Lcom/iflytek/voiceads/view/b;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/config/AdError;->getErrorCode()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/iflytek/voiceads/view/b;->a(II)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/iflytek/voiceads/view/AdView;->l:Lcom/iflytek/voiceads/view/b;

    const v2, 0x1155b

    invoke-virtual {v1, v3, v2}, Lcom/iflytek/voiceads/view/b;->a(II)V

    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request:"

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

.method public declared-synchronized a(Lcom/iflytek/voiceads/listener/IFLYAdListener;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string v0, "IFLY_AD_SDK"

    const-string v1, "invalid IFLYAdListener!"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/iflytek/voiceads/utils/a$c;->f:Lcom/iflytek/voiceads/utils/a$c;

    iget-object v1, p0, Lcom/iflytek/voiceads/view/AdView;->l:Lcom/iflytek/voiceads/view/b;

    invoke-virtual {v1}, Lcom/iflytek/voiceads/view/b;->a()Lcom/iflytek/voiceads/utils/a$c;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "ad is exited!"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/iflytek/voiceads/utils/a$c;->a:Lcom/iflytek/voiceads/utils/a$c;

    iget-object v1, p0, Lcom/iflytek/voiceads/view/AdView;->l:Lcom/iflytek/voiceads/view/b;

    invoke-virtual {v1}, Lcom/iflytek/voiceads/view/b;->a()Lcom/iflytek/voiceads/utils/a$c;

    move-result-object v1

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/iflytek/voiceads/utils/a$c;->e:Lcom/iflytek/voiceads/utils/a$c;

    iget-object v1, p0, Lcom/iflytek/voiceads/view/AdView;->l:Lcom/iflytek/voiceads/view/b;

    invoke-virtual {v1}, Lcom/iflytek/voiceads/view/b;->a()Lcom/iflytek/voiceads/utils/a$c;

    move-result-object v1

    if-eq v0, v1, :cond_2

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "ad is requesting, please retry a little later!"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->e:Lcom/iflytek/voiceads/param/a;

    const-string v1, "debug_mode"

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/param/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/iflytek/voiceads/utils/g;->a(Z)V

    :goto_1
    iput-object p1, p0, Lcom/iflytek/voiceads/view/AdView;->j:Lcom/iflytek/voiceads/listener/IFLYAdListener;

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->n:Lcom/iflytek/voiceads/view/a;

    invoke-virtual {v0, p1}, Lcom/iflytek/voiceads/view/a;->a(Lcom/iflytek/voiceads/listener/IFLYAdListener;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->l:Lcom/iflytek/voiceads/view/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/view/b;->a(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/iflytek/voiceads/utils/g;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->g:Lcom/iflytek/voiceads/d/a;

    iget v0, v0, Lcom/iflytek/voiceads/d/a;->M:I

    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clickAd: actionType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "about:blank"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "IFLY_AD_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid click url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/voiceads/view/AdView;->e:Lcom/iflytek/voiceads/param/a;

    iget-object v2, p0, Lcom/iflytek/voiceads/view/AdView;->f:Lcom/iflytek/voiceads/d/b;

    iget-object v2, v2, Lcom/iflytek/voiceads/d/b;->c:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/iflytek/voiceads/request/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/voiceads/param/a;Ljava/lang/String;)V

    :goto_1
    const-string v0, "IFLY_AD_SDK"

    const-string v1, "\u70b9\u51fb\u76d1\u63a7"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->g:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->J:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->g:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->J:Lorg/json/JSONObject;

    const-string v1, "click_urls"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->g:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->J:Lorg/json/JSONObject;

    const-string v1, "click_urls"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/iflytek/voiceads/view/AdView;->a:Landroid/content/Context;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/iflytek/voiceads/utils/j;->a([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->j:Lcom/iflytek/voiceads/listener/IFLYAdListener;

    invoke-interface {v0}, Lcom/iflytek/voiceads/listener/IFLYAdListener;->onAdClick()V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/voiceads/download/d;->a(Landroid/content/Context;)Lcom/iflytek/voiceads/download/d;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/voiceads/view/AdView;->j:Lcom/iflytek/voiceads/listener/IFLYAdListener;

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/download/d;->a(Lcom/iflytek/voiceads/listener/DialogListener;)V

    iget-object v1, p0, Lcom/iflytek/voiceads/view/AdView;->e:Lcom/iflytek/voiceads/param/a;

    const-string v2, "download_alert"

    invoke-virtual {v1, v2}, Lcom/iflytek/voiceads/param/a;->c(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/download/d;->a(Z)V

    iget-object v1, p0, Lcom/iflytek/voiceads/view/AdView;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/voiceads/view/AdView;->f:Lcom/iflytek/voiceads/d/b;

    iget-object v2, v2, Lcom/iflytek/voiceads/d/b;->f:Lcom/iflytek/voiceads/d/a;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/voiceads/download/d;->a(Landroid/content/Context;Lcom/iflytek/voiceads/d/a;[Ljava/lang/Object;)V

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "AdView startDownload"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "html click:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->e:Lcom/iflytek/voiceads/param/a;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/voiceads/param/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected b(II)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public b()V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->o:Lcom/iflytek/voiceads/view/AdView$a;

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/view/AdView$a;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->l:Lcom/iflytek/voiceads/view/b;

    sget-object v1, Lcom/iflytek/voiceads/utils/a$c;->e:Lcom/iflytek/voiceads/utils/a$c;

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/view/b;->a(Lcom/iflytek/voiceads/utils/a$c;)V

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->g:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->J:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->g:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->J:Lorg/json/JSONObject;

    const-string v1, "impress_urls"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->e:Lcom/iflytek/voiceads/param/a;

    const-string v1, "auction_price"

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/param/a;->e(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/iflytek/voiceads/view/AdView;->g:Lcom/iflytek/voiceads/d/a;

    iget-object v2, v2, Lcom/iflytek/voiceads/d/a;->J:Lorg/json/JSONObject;

    const-string v3, "impress_urls"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/iflytek/voiceads/utils/j;->a(DLorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/iflytek/voiceads/view/AdView;->a:Landroid/content/Context;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/iflytek/voiceads/utils/j;->a([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v0, "IFLY_AD_SDK"

    const-string v1, "procMsgShow successfully!"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_1
    const-string v0, "IFLY_AD_SDK"

    const-string v1, "impArray null"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Show:"

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

.method public b(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->o:Lcom/iflytek/voiceads/view/AdView$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/view/AdView$a;->sendEmptyMessage(I)Z

    const-string v0, "IFLY_AD_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "procMsgTimeout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->j:Lcom/iflytek/voiceads/listener/IFLYAdListener;

    invoke-interface {v0}, Lcom/iflytek/voiceads/listener/IFLYAdListener;->onAdClose()V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/view/AdView;->i()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->a:Landroid/content/Context;

    return-void
.end method

.method public c(Landroid/os/Message;)V
    .locals 4

    const-string v0, "IFLY_AD_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "procMsgEnd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Lcom/iflytek/voiceads/config/AdError;

    invoke-direct {v1, v0}, Lcom/iflytek/voiceads/config/AdError;-><init>(I)V

    invoke-virtual {v1}, Lcom/iflytek/voiceads/config/AdError;->getErrorCode()I

    move-result v0

    iget-object v2, p0, Lcom/iflytek/voiceads/view/AdView;->n:Lcom/iflytek/voiceads/view/a;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/iflytek/voiceads/view/a;->a(ILjava/lang/Object;)V

    :cond_0
    const v1, 0x11303

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->e:Lcom/iflytek/voiceads/param/a;

    const-string v1, "banner_recycle"

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/param/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/voiceads/view/AdView;->h()V

    :cond_1
    return-void
.end method

.method protected d()V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/iflytek/voiceads/utils/a$a;->a:Lcom/iflytek/voiceads/utils/a$a;

    iget-object v1, p0, Lcom/iflytek/voiceads/view/AdView;->h:Lcom/iflytek/voiceads/utils/a$a;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/voiceads/view/AdView;->requestFocus()Z

    :cond_0
    invoke-virtual {p0, v2}, Lcom/iflytek/voiceads/view/AdView;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Lcom/iflytek/voiceads/view/AdView;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method protected declared-synchronized d(Landroid/os/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/voiceads/view/AdView;->e:Lcom/iflytek/voiceads/param/a;

    iget-object v2, p0, Lcom/iflytek/voiceads/view/AdView;->q:Lcom/iflytek/voiceads/request/a$a;

    invoke-static {v0, v1, v2}, Lcom/iflytek/voiceads/request/f;->a(Landroid/content/Context;Lcom/iflytek/voiceads/param/a;Lcom/iflytek/voiceads/request/a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected e()I
    .locals 2

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->e:Lcom/iflytek/voiceads/param/a;

    const-string v1, "banner_interval"

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/param/a;->d(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    const/16 v1, 0x28

    if-gt v0, v1, :cond_0

    mul-int/lit16 v0, v0, 0x3e8

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x7530

    goto :goto_0
.end method

.method protected f()Z
    .locals 2

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->e:Lcom/iflytek/voiceads/param/a;

    const-string v1, "banner_recycle"

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/param/a;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized g()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->l:Lcom/iflytek/voiceads/view/b;

    const/4 v1, 0x3

    const v2, 0x11238

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/voiceads/view/b;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized h()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method protected i()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->l:Lcom/iflytek/voiceads/view/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/view/b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->m:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method protected j()V
    .locals 0

    return-void
.end method

.method protected abstract k()V
.end method

.method public l()V
    .locals 0

    invoke-virtual {p0}, Lcom/iflytek/voiceads/view/AdView;->c()V

    return-void
.end method

.method protected m()V
    .locals 4

    invoke-direct {p0}, Lcom/iflytek/voiceads/view/AdView;->q()Lcom/iflytek/voiceads/utils/a$b;

    move-result-object v0

    sget-object v1, Lcom/iflytek/voiceads/utils/a$b;->d:Lcom/iflytek/voiceads/utils/a$b;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/voiceads/view/AdView;->getVisibility()I

    move-result v0

    sget-object v1, Lcom/iflytek/voiceads/utils/a$b;->d:Lcom/iflytek/voiceads/utils/a$b;

    invoke-direct {p0, v1}, Lcom/iflytek/voiceads/view/AdView;->a(Lcom/iflytek/voiceads/utils/a$b;)V

    iget-object v1, p0, Lcom/iflytek/voiceads/view/AdView;->j:Lcom/iflytek/voiceads/listener/IFLYAdListener;

    invoke-interface {v1}, Lcom/iflytek/voiceads/listener/IFLYAdListener;->onAdReceive()V

    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAdPageFinished:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    sget-object v0, Lcom/iflytek/voiceads/utils/a$a;->b:Lcom/iflytek/voiceads/utils/a$a;

    iget-object v1, p0, Lcom/iflytek/voiceads/view/AdView;->h:Lcom/iflytek/voiceads/utils/a$a;

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/utils/a$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->e:Lcom/iflytek/voiceads/param/a;

    const-string v1, "back_key_enable"

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/param/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->k:Lcom/iflytek/voiceads/listener/InternalListener;

    invoke-interface {v0}, Lcom/iflytek/voiceads/listener/InternalListener;->onAdDestroy()Z

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->j:Lcom/iflytek/voiceads/listener/IFLYAdListener;

    invoke-interface {v0}, Lcom/iflytek/voiceads/listener/IFLYAdListener;->onAdClose()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView;->c:Lcom/iflytek/voiceads/f/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/f/b;->a(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onVisibilityChanged(Landroid/view/View;I)V

    iput p2, p0, Lcom/iflytek/voiceads/view/AdView;->p:I

    const-string v0, "IFLY_AD_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ad view visibility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/voiceads/view/AdView;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/iflytek/voiceads/view/AdView;->p:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/iflytek/voiceads/view/AdView;->p:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/iflytek/voiceads/view/AdView;->r()V

    :cond_1
    iget v0, p0, Lcom/iflytek/voiceads/view/AdView;->p:I

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/iflytek/voiceads/view/AdView;->s()V

    :cond_2
    return-void
.end method

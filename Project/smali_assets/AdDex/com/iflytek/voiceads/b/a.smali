.class public Lcom/iflytek/voiceads/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/voiceads/b/a$a;
    }
.end annotation


# instance fields
.field a:Lcom/iflytek/voiceads/b/e$b;

.field b:Landroid/os/Handler;

.field private c:Lcom/iflytek/voiceads/b/d;

.field private d:Ljava/lang/String;

.field private e:Lcom/iflytek/voiceads/b/a$a;

.field private final f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/iflytek/voiceads/b/b;

    invoke-direct {v0, p0}, Lcom/iflytek/voiceads/b/b;-><init>(Lcom/iflytek/voiceads/b/a;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/b/a;->a:Lcom/iflytek/voiceads/b/e$b;

    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/voiceads/b/a;->f:I

    new-instance v0, Lcom/iflytek/voiceads/b/c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/voiceads/b/c;-><init>(Lcom/iflytek/voiceads/b/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/b/a;->b:Landroid/os/Handler;

    iput-object p2, p0, Lcom/iflytek/voiceads/b/a;->d:Ljava/lang/String;

    new-instance v0, Lcom/iflytek/voiceads/b/d;

    invoke-direct {v0, p1, p2}, Lcom/iflytek/voiceads/b/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/b/a;->c:Lcom/iflytek/voiceads/b/d;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/voiceads/b/a;)Lcom/iflytek/voiceads/b/d;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/b/a;->c:Lcom/iflytek/voiceads/b/d;

    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/voiceads/b/a;)Lcom/iflytek/voiceads/b/a$a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/b/a;->e:Lcom/iflytek/voiceads/b/a$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/iflytek/voiceads/b/a$a;)V
    .locals 3

    iput-object p1, p0, Lcom/iflytek/voiceads/b/a;->e:Lcom/iflytek/voiceads/b/a$a;

    iget-object v0, p0, Lcom/iflytek/voiceads/b/a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/iflytek/voiceads/b/a$a;->a(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/voiceads/b/a;->c:Lcom/iflytek/voiceads/b/d;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/b/d;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Lcom/iflytek/voiceads/b/a$a;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/iflytek/voiceads/b/e;

    iget-object v1, p0, Lcom/iflytek/voiceads/b/a;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/voiceads/b/a;->a:Lcom/iflytek/voiceads/b/e$b;

    invoke-direct {v0, v1, v2}, Lcom/iflytek/voiceads/b/e;-><init>(Ljava/lang/String;Lcom/iflytek/voiceads/b/e$b;)V

    invoke-virtual {v0}, Lcom/iflytek/voiceads/b/e;->a()V

    goto :goto_0
.end method

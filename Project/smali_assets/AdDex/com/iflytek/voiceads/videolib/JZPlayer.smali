.class public abstract Lcom/iflytek/voiceads/videolib/JZPlayer;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/voiceads/videolib/JZPlayer$a;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field public static c:J


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field protected H:I

.field protected I:I

.field protected J:Landroid/media/AudioManager;

.field protected K:Landroid/os/Handler;

.field protected L:Ljava/util/concurrent/ScheduledExecutorService;

.field protected M:Lcom/iflytek/voiceads/videolib/JZPlayer$a;

.field protected N:Z

.field public O:Lcom/iflytek/voiceads/e/g;

.field public P:Lcom/iflytek/voiceads/e/h;

.field public Q:Lcom/iflytek/voiceads/listener/IFLYVideoListener;

.field public R:Lcom/iflytek/voiceads/param/a;

.field public S:I

.field public T:Z

.field private final U:I

.field public d:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field public e:Lcom/iflytek/voiceads/videolib/a;

.field public f:[Ljava/lang/Object;

.field public g:I

.field public h:I

.field public i:I

.field public j:J

.field public k:Z

.field public l:Landroid/widget/SeekBar;

.field public m:Landroid/widget/ImageView;

.field public n:Landroid/widget/ImageView;

.field public o:Landroid/widget/ImageView;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/view/ViewGroup;

.field public s:Landroid/view/ViewGroup;

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    sput v0, Lcom/iflytek/voiceads/videolib/JZPlayer;->a:I

    const/4 v0, 0x0

    sput v0, Lcom/iflytek/voiceads/videolib/JZPlayer;->b:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/iflytek/voiceads/videolib/JZPlayer;->c:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x7f020005

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->U:I

    new-instance v0, Lcom/iflytek/voiceads/videolib/l;

    invoke-direct {v0, p0}, Lcom/iflytek/voiceads/videolib/l;-><init>(Lcom/iflytek/voiceads/videolib/JZPlayer;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->d:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->f:[Ljava/lang/Object;

    iput v3, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->g:I

    iput v3, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->h:I

    iput v2, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->i:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->j:J

    iput-boolean v2, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->k:Z

    iput v2, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->D:I

    iput v2, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->E:I

    iput v3, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->F:I

    iput v2, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->G:I

    invoke-virtual {p0, p1}, Lcom/iflytek/voiceads/videolib/JZPlayer;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f020005

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->U:I

    new-instance v0, Lcom/iflytek/voiceads/videolib/l;

    invoke-direct {v0, p0}, Lcom/iflytek/voiceads/videolib/l;-><init>(Lcom/iflytek/voiceads/videolib/JZPlayer;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->d:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->f:[Ljava/lang/Object;

    iput v3, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->g:I

    iput v3, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->h:I

    iput v2, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->i:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->j:J

    iput-boolean v2, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->k:Z

    iput v2, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->D:I

    iput v2, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->E:I

    iput v3, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->F:I

    iput v2, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->G:I

    invoke-virtual {p0, p1}, Lcom/iflytek/voiceads/videolib/JZPlayer;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static b()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/iflytek/voiceads/videolib/JZPlayer;->c:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/iflytek/voiceads/videolib/o;->b()Lcom/iflytek/voiceads/videolib/JZPlayer;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/iflytek/voiceads/videolib/JZPlayer;->c:J

    invoke-static {}, Lcom/iflytek/voiceads/videolib/o;->a()Lcom/iflytek/voiceads/videolib/JZPlayer;

    move-result-object v0

    iget-object v0, v0, Lcom/iflytek/voiceads/videolib/JZPlayer;->e:Lcom/iflytek/voiceads/videolib/a;

    invoke-static {}, Lcom/iflytek/voiceads/videolib/c;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iflytek/voiceads/videolib/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/iflytek/voiceads/videolib/o;->a()Lcom/iflytek/voiceads/videolib/JZPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->J()V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/iflytek/voiceads/videolib/JZPlayer;->c()V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/iflytek/voiceads/videolib/o;->a()Lcom/iflytek/voiceads/videolib/JZPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/iflytek/voiceads/videolib/o;->a()Lcom/iflytek/voiceads/videolib/JZPlayer;

    move-result-object v2

    iget v2, v2, Lcom/iflytek/voiceads/videolib/JZPlayer;->h:I

    if-ne v2, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/iflytek/voiceads/videolib/JZPlayer;->c:J

    invoke-static {}, Lcom/iflytek/voiceads/videolib/JZPlayer;->c()V

    goto :goto_0
.end method

.method public static c()V
    .locals 1

    invoke-static {}, Lcom/iflytek/voiceads/videolib/o;->a()Lcom/iflytek/voiceads/videolib/JZPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->z()V

    invoke-static {}, Lcom/iflytek/voiceads/videolib/c;->a()Lcom/iflytek/voiceads/videolib/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/c;->g()V

    invoke-static {}, Lcom/iflytek/voiceads/videolib/o;->d()V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 3

    const-string v0, "JZVideoPlayer"

    const-string v1, "onVideoSizeChanged"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/voiceads/videolib/c;->a:Lcom/iflytek/voiceads/videolib/JZTextureView;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->G:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/voiceads/videolib/c;->a:Lcom/iflytek/voiceads/videolib/JZTextureView;

    iget v1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->G:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/videolib/JZTextureView;->setRotation(F)V

    :cond_0
    sget-object v0, Lcom/iflytek/voiceads/videolib/c;->a:Lcom/iflytek/voiceads/videolib/JZTextureView;

    invoke-static {}, Lcom/iflytek/voiceads/videolib/c;->a()Lcom/iflytek/voiceads/videolib/c;

    move-result-object v1

    iget v1, v1, Lcom/iflytek/voiceads/videolib/c;->g:I

    invoke-static {}, Lcom/iflytek/voiceads/videolib/c;->a()Lcom/iflytek/voiceads/videolib/c;

    move-result-object v2

    iget v2, v2, Lcom/iflytek/voiceads/videolib/c;->h:I

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/voiceads/videolib/JZTextureView;->a(II)V

    :cond_1
    return-void
.end method

.method public B()V
    .locals 7

    const-string v0, "JZVideoPlayer"

    const-string v1, "startProgressTimer"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->C()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->L:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/iflytek/voiceads/videolib/JZPlayer$a;

    invoke-direct {v0, p0}, Lcom/iflytek/voiceads/videolib/JZPlayer$a;-><init>(Lcom/iflytek/voiceads/videolib/JZPlayer;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->M:Lcom/iflytek/voiceads/videolib/JZPlayer$a;

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->L:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->M:Lcom/iflytek/voiceads/videolib/JZPlayer$a;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x12c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public C()V
    .locals 2

    const-string v0, "JZVideoPlayer"

    const-string v1, "cancelProgressTimer"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->L:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->L:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->M:Lcom/iflytek/voiceads/videolib/JZPlayer$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->M:Lcom/iflytek/voiceads/videolib/JZPlayer$a;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/JZPlayer$a;->cancel()Z

    :cond_1
    return-void
.end method

.method public D()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->l:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->l:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->p:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/iflytek/voiceads/videolib/n;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->q:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/iflytek/voiceads/videolib/n;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public E()J
    .locals 6

    const-wide/16 v0, 0x0

    iget v2, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->g:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->g:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/iflytek/voiceads/videolib/c;->c()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_1
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    const-string v3, "JZVideoPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get position"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public F()J
    .locals 6

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/iflytek/voiceads/videolib/c;->d()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    const-string v3, "JZVideoPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get dur"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public G()V
    .locals 7

    const/16 v6, 0x13

    const/16 v5, 0x10

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->O:Lcom/iflytek/voiceads/e/g;

    iget v0, v0, Lcom/iflytek/voiceads/e/g;->c:I

    iget-object v1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->O:Lcom/iflytek/voiceads/e/g;

    iget v1, v1, Lcom/iflytek/voiceads/e/g;->d:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/videolib/n;->a(Landroid/content/Context;I)V

    :goto_0
    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/voiceads/videolib/n;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "JZVideoPlayer"

    const-string v1, "startWindowFullscreen curActivity is null!"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/videolib/n;->a(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "JZVideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "window full"

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

    :cond_1
    const v1, 0x1020002

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f020005

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->r:Landroid/view/ViewGroup;

    sget-object v2, Lcom/iflytek/voiceads/videolib/c;->a:Lcom/iflytek/voiceads/videolib/JZTextureView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/voiceads/videolib/JZPlayer;

    const v2, 0x7f020005

    invoke-virtual {v1, v2}, Lcom/iflytek/voiceads/videolib/JZPlayer;->setId(I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v6, :cond_3

    if-lt v2, v6, :cond_3

    const/16 v0, 0x806

    invoke-virtual {v1, v0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->setSystemUiVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->O:Lcom/iflytek/voiceads/e/g;

    invoke-virtual {v1, v0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->a(Lcom/iflytek/voiceads/e/g;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->R:Lcom/iflytek/voiceads/param/a;

    invoke-virtual {v1, v0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->a(Lcom/iflytek/voiceads/param/a;)V

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->S:I

    invoke-virtual {v1, v0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->a(I)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->Q:Lcom/iflytek/voiceads/listener/IFLYVideoListener;

    invoke-virtual {v1, v0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->a(Lcom/iflytek/voiceads/listener/IFLYVideoListener;)V

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->i:I

    invoke-virtual {v1, v0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->b(I)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    invoke-virtual {v1, v0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->a(Lcom/iflytek/voiceads/e/h;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->e:Lcom/iflytek/voiceads/videolib/a;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->f:[Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/iflytek/voiceads/videolib/JZPlayer;->a(Lcom/iflytek/voiceads/videolib/a;I[Ljava/lang/Object;)V

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->g:I

    invoke-virtual {v1, v0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->c(I)V

    invoke-virtual {v1}, Lcom/iflytek/voiceads/videolib/JZPlayer;->w()V

    invoke-static {v1}, Lcom/iflytek/voiceads/videolib/o;->b(Lcom/iflytek/voiceads/videolib/JZPlayer;)V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->m()V

    iget-object v0, v1, Lcom/iflytek/voiceads/videolib/JZPlayer;->l:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->l:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getSecondaryProgress()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    invoke-virtual {v1}, Lcom/iflytek/voiceads/videolib/JZPlayer;->B()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/iflytek/voiceads/videolib/JZPlayer;->c:J

    goto/16 :goto_1

    :cond_3
    if-lt v0, v5, :cond_4

    if-ge v2, v5, :cond_5

    :cond_4
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->setSystemUiVisibility(I)V

    goto :goto_2

    :cond_5
    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->setSystemUiVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public H()Z
    .locals 2

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->e:Lcom/iflytek/voiceads/videolib/a;

    invoke-static {}, Lcom/iflytek/voiceads/videolib/c;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/videolib/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public I()Z
    .locals 1

    invoke-static {}, Lcom/iflytek/voiceads/videolib/o;->c()Lcom/iflytek/voiceads/videolib/JZPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iflytek/voiceads/videolib/o;->c()Lcom/iflytek/voiceads/videolib/JZPlayer;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public J()V
    .locals 2

    invoke-static {}, Lcom/iflytek/voiceads/videolib/o;->b()Lcom/iflytek/voiceads/videolib/JZPlayer;

    move-result-object v0

    iget v0, v0, Lcom/iflytek/voiceads/videolib/JZPlayer;->i:I

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->i:I

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->i:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->o:Landroid/widget/ImageView;

    iget v1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->C:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/iflytek/voiceads/videolib/o;->b()Lcom/iflytek/voiceads/videolib/JZPlayer;

    move-result-object v0

    iget v0, v0, Lcom/iflytek/voiceads/videolib/JZPlayer;->g:I

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->g:I

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->z()V

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->g:I

    invoke-virtual {p0, v0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->c(I)V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->w()V

    return-void

    :cond_1
    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->o:Landroid/widget/ImageView;

    iget v1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->B:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public K()V
    .locals 0

    return-void
.end method

.method public L()V
    .locals 0

    return-void
.end method

.method public a()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/iflytek/voiceads/videolib/JZPlayer;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/iflytek/voiceads/videolib/o;->d()V

    invoke-static {}, Lcom/iflytek/voiceads/videolib/c;->a()Lcom/iflytek/voiceads/videolib/c;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Lcom/iflytek/voiceads/videolib/c;->f:I

    invoke-static {}, Lcom/iflytek/voiceads/videolib/c;->a()Lcom/iflytek/voiceads/videolib/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/c;->g()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->S:I

    return-void
.end method

.method public a(II)V
    .locals 4

    const/16 v3, 0x26

    const/16 v2, -0x26

    const-string v0, "JZVideoPlayer"

    const-string v1, "onError"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p1, v3, :cond_0

    if-eq p2, v2, :cond_0

    if-eq p1, v2, :cond_0

    if-eq p2, v3, :cond_0

    const/16 v0, -0x13

    if-eq p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->r()V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iflytek/voiceads/videolib/c;->a()Lcom/iflytek/voiceads/videolib/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/c;->g()V

    :cond_0
    return-void
.end method

.method public a(III)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->m()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->n()V

    goto :goto_0

    :pswitch_3
    int-to-long v0, p3

    invoke-virtual {p0, p2, v0, v1}, Lcom/iflytek/voiceads/videolib/JZPlayer;->a(IJ)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->p()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->q()V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->r()V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->s()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public a(IJ)V
    .locals 2

    const-string v0, "JZVideoPlayer"

    const-string v1, "onStatePreparingChangingUrl"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->g:I

    iput-wide p2, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->j:J

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->e:Lcom/iflytek/voiceads/videolib/a;

    iput p1, v0, Lcom/iflytek/voiceads/videolib/a;->b:I

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->e:Lcom/iflytek/voiceads/videolib/a;

    invoke-static {v0}, Lcom/iflytek/voiceads/videolib/c;->a(Lcom/iflytek/voiceads/videolib/a;)V

    invoke-static {}, Lcom/iflytek/voiceads/videolib/c;->a()Lcom/iflytek/voiceads/videolib/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/c;->h()V

    return-void
.end method

.method public a(IJJ)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->N:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->l:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    const/16 v0, 0x15

    if-ge v0, p1, :cond_0

    const/16 v0, 0x1d

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iget-boolean v0, v0, Lcom/iflytek/voiceads/e/h;->b:Z

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->O:Lcom/iflytek/voiceads/e/g;

    iget-object v1, v1, Lcom/iflytek/voiceads/e/g;->j:Lorg/json/JSONArray;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/iflytek/voiceads/utils/j;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iput-boolean v2, v0, Lcom/iflytek/voiceads/e/h;->b:Z

    :cond_0
    const/16 v0, 0x2e

    if-ge v0, p1, :cond_1

    const/16 v0, 0x36

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iget-boolean v0, v0, Lcom/iflytek/voiceads/e/h;->c:Z

    if-nez v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->O:Lcom/iflytek/voiceads/e/g;

    iget-object v1, v1, Lcom/iflytek/voiceads/e/g;->k:Lorg/json/JSONArray;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/iflytek/voiceads/utils/j;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iput-boolean v2, v0, Lcom/iflytek/voiceads/e/h;->c:Z

    :cond_1
    const/16 v0, 0x47

    if-ge v0, p1, :cond_2

    const/16 v0, 0x4f

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iget-boolean v0, v0, Lcom/iflytek/voiceads/e/h;->d:Z

    if-nez v0, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->O:Lcom/iflytek/voiceads/e/g;

    iget-object v1, v1, Lcom/iflytek/voiceads/e/g;->l:Lorg/json/JSONArray;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/iflytek/voiceads/utils/j;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iput-boolean v2, v0, Lcom/iflytek/voiceads/e/h;->d:Z

    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->p:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lcom/iflytek/voiceads/videolib/n;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->q:Landroid/widget/TextView;

    invoke-static {p4, p5}, Lcom/iflytek/voiceads/videolib/n;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->g()I

    move-result v0

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/iflytek/voiceads/videolib/JZPlayer;->b(Landroid/content/Context;)V

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->t:I

    invoke-virtual {p0, v0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->m:Landroid/widget/ImageView;

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->u:I

    invoke-virtual {p0, v0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->n:Landroid/widget/ImageView;

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->v:I

    invoke-virtual {p0, v0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->o:Landroid/widget/ImageView;

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->x:I

    invoke-virtual {p0, v0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->l:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->w:I

    invoke-virtual {p0, v0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->p:Landroid/widget/TextView;

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->y:I

    invoke-virtual {p0, v0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->q:Landroid/widget/TextView;

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->A:I

    invoke-virtual {p0, v0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->s:Landroid/view/ViewGroup;

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->z:I

    invoke-virtual {p0, v0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->r:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->l:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->s:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->r:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->r:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->H:I

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->I:I

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->J:Landroid/media/AudioManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->K:Landroid/os/Handler;

    new-instance v0, Lcom/iflytek/voiceads/e/h;

    invoke-direct {v0}, Lcom/iflytek/voiceads/e/h;-><init>()V

    iput-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    sput v0, Lcom/iflytek/voiceads/videolib/JZPlayer;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "JZVideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jz init"

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

.method public a(Lcom/iflytek/voiceads/e/g;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->O:Lcom/iflytek/voiceads/e/g;

    return-void
.end method

.method public a(Lcom/iflytek/voiceads/e/h;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    return-void
.end method

.method public a(Lcom/iflytek/voiceads/listener/IFLYVideoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->Q:Lcom/iflytek/voiceads/listener/IFLYVideoListener;

    return-void
.end method

.method public a(Lcom/iflytek/voiceads/param/a;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->R:Lcom/iflytek/voiceads/param/a;

    return-void
.end method

.method public varargs a(Lcom/iflytek/voiceads/videolib/a;I[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->e:Lcom/iflytek/voiceads/videolib/a;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/voiceads/videolib/a;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->e:Lcom/iflytek/voiceads/videolib/a;

    invoke-virtual {p1}, Lcom/iflytek/voiceads/videolib/a;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/videolib/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/iflytek/voiceads/videolib/c;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iflytek/voiceads/videolib/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/iflytek/voiceads/videolib/c;->a()Lcom/iflytek/voiceads/videolib/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/c;->g()V

    :cond_1
    iput p2, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->h:I

    iput-object p1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->e:Lcom/iflytek/voiceads/videolib/a;

    iput-object p3, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->f:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->e:Lcom/iflytek/voiceads/videolib/a;

    iput-object p3, v0, Lcom/iflytek/voiceads/videolib/a;->g:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->m()V

    goto :goto_0
.end method

.method public varargs a(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lcom/iflytek/voiceads/videolib/a;

    invoke-direct {v0, p1, p2}, Lcom/iflytek/voiceads/videolib/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3, p4}, Lcom/iflytek/voiceads/videolib/JZPlayer;->a(Lcom/iflytek/voiceads/videolib/a;I[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->T:Z

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->i:I

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    const-string v0, "id"

    const-string v1, "ifly_ad_play_state_btn"

    invoke-static {p1, v0, v1}, Lcom/iflytek/voiceads/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->t:I

    const-string v0, "id"

    const-string v1, "ifly_ad_fullscreen_btn"

    invoke-static {p1, v0, v1}, Lcom/iflytek/voiceads/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->u:I

    const-string v0, "id"

    const-string v1, "ifly_ad_volume_btn"

    invoke-static {p1, v0, v1}, Lcom/iflytek/voiceads/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->v:I

    const-string v0, "id"

    const-string v1, "ifly_ad_cur_time"

    invoke-static {p1, v0, v1}, Lcom/iflytek/voiceads/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->w:I

    const-string v0, "id"

    const-string v1, "ifly_ad_bottom_seek_bar"

    invoke-static {p1, v0, v1}, Lcom/iflytek/voiceads/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->x:I

    const-string v0, "id"

    const-string v1, "ifly_ad_total_time"

    invoke-static {p1, v0, v1}, Lcom/iflytek/voiceads/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->y:I

    const-string v0, "id"

    const-string v1, "ifly_ad_surface_container"

    invoke-static {p1, v0, v1}, Lcom/iflytek/voiceads/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->z:I

    const-string v0, "id"

    const-string v1, "ifly_ad_layout_bottom"

    invoke-static {p1, v0, v1}, Lcom/iflytek/voiceads/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->A:I

    const-string v0, "drawable"

    const-string v1, "ifly_ad_jz_open_volume"

    invoke-static {p1, v0, v1}, Lcom/iflytek/voiceads/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->B:I

    const-string v0, "drawable"

    const-string v1, "ifly_ad_jz_close_volume"

    invoke-static {p1, v0, v1}, Lcom/iflytek/voiceads/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->C:I

    return-void
.end method

.method public b(Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/iflytek/voiceads/videolib/c;->a(Z)V

    if-eqz p1, :cond_1

    iput v3, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->i:I

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iget-boolean v0, v0, Lcom/iflytek/voiceads/e/h;->i:Z

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->O:Lcom/iflytek/voiceads/e/g;

    iget-object v1, v1, Lcom/iflytek/voiceads/e/g;->q:Lorg/json/JSONArray;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/iflytek/voiceads/utils/j;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iput-boolean v2, v0, Lcom/iflytek/voiceads/e/h;->i:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v2, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->i:I

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iget-boolean v0, v0, Lcom/iflytek/voiceads/e/h;->j:Z

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->O:Lcom/iflytek/voiceads/e/g;

    iget-object v1, v1, Lcom/iflytek/voiceads/e/g;->r:Lorg/json/JSONArray;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/iflytek/voiceads/utils/j;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iput-boolean v2, v0, Lcom/iflytek/voiceads/e/h;->j:Z

    goto :goto_0
.end method

.method public c(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->a(III)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->k:Z

    return-void
.end method

.method public d()V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/iflytek/voiceads/videolib/o;->c()Lcom/iflytek/voiceads/videolib/JZPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/iflytek/voiceads/videolib/JZPlayer;->g:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->p()V

    invoke-static {}, Lcom/iflytek/voiceads/videolib/c;->f()V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iget-boolean v0, v0, Lcom/iflytek/voiceads/e/h;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->O:Lcom/iflytek/voiceads/e/g;

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->O:Lcom/iflytek/voiceads/e/g;

    iget-object v2, v2, Lcom/iflytek/voiceads/e/g;->o:Lorg/json/JSONArray;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/iflytek/voiceads/utils/j;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iput-boolean v3, v0, Lcom/iflytek/voiceads/e/h;->g:Z

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->l:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/iflytek/voiceads/videolib/o;->c()Lcom/iflytek/voiceads/videolib/JZPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/iflytek/voiceads/videolib/JZPlayer;->g:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    iget v1, v0, Lcom/iflytek/voiceads/videolib/JZPlayer;->g:I

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/iflytek/voiceads/videolib/JZPlayer;->g:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->q()V

    invoke-static {}, Lcom/iflytek/voiceads/videolib/c;->e()V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iget-boolean v0, v0, Lcom/iflytek/voiceads/e/h;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->O:Lcom/iflytek/voiceads/e/g;

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->O:Lcom/iflytek/voiceads/e/g;

    iget-object v2, v2, Lcom/iflytek/voiceads/e/g;->n:Lorg/json/JSONArray;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/iflytek/voiceads/utils/j;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iput-boolean v3, v0, Lcom/iflytek/voiceads/e/h;->f:Z

    :cond_0
    return-void
.end method

.method public f()V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/iflytek/voiceads/videolib/o;->c()Lcom/iflytek/voiceads/videolib/JZPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->K()V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->a()V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iget-boolean v0, v0, Lcom/iflytek/voiceads/e/h;->l:Z

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->O:Lcom/iflytek/voiceads/e/g;

    iget-object v2, v2, Lcom/iflytek/voiceads/e/g;->t:Lorg/json/JSONArray;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/iflytek/voiceads/utils/j;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iput-boolean v3, v0, Lcom/iflytek/voiceads/e/h;->l:Z

    :cond_0
    return-void
.end method

.method public abstract g()I
.end method

.method public h()V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/iflytek/voiceads/videolib/JZPlayer;->b()Z

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iget-boolean v0, v0, Lcom/iflytek/voiceads/e/h;->h:Z

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->O:Lcom/iflytek/voiceads/e/g;

    iget-object v2, v2, Lcom/iflytek/voiceads/e/g;->p:Lorg/json/JSONArray;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/iflytek/voiceads/utils/j;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iput-boolean v3, v0, Lcom/iflytek/voiceads/e/h;->h:Z

    :cond_0
    return-void
.end method

.method public i()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iget-boolean v0, v0, Lcom/iflytek/voiceads/e/h;->o:Z

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->O:Lcom/iflytek/voiceads/e/g;

    iget-object v2, v2, Lcom/iflytek/voiceads/e/g;->w:Lorg/json/JSONArray;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/iflytek/voiceads/utils/j;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iput-boolean v3, v0, Lcom/iflytek/voiceads/e/h;->o:Z

    :cond_0
    return-void
.end method

.method public j()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iget-boolean v0, v0, Lcom/iflytek/voiceads/e/h;->p:Z

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->O:Lcom/iflytek/voiceads/e/g;

    iget-object v2, v2, Lcom/iflytek/voiceads/e/g;->x:Lorg/json/JSONArray;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/iflytek/voiceads/utils/j;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iput-boolean v3, v0, Lcom/iflytek/voiceads/e/h;->p:Z

    :cond_0
    return-void
.end method

.method public k()V
    .locals 4

    invoke-static {}, Lcom/iflytek/voiceads/videolib/o;->d()V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->v()V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->w()V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->d:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/voiceads/videolib/n;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->e:Lcom/iflytek/voiceads/videolib/a;

    invoke-static {v0}, Lcom/iflytek/voiceads/videolib/c;->a(Lcom/iflytek/voiceads/videolib/a;)V

    invoke-static {}, Lcom/iflytek/voiceads/videolib/c;->a()Lcom/iflytek/voiceads/videolib/c;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->F:I

    iput v1, v0, Lcom/iflytek/voiceads/videolib/c;->f:I

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->n()V

    invoke-static {p0}, Lcom/iflytek/voiceads/videolib/o;->a(Lcom/iflytek/voiceads/videolib/JZPlayer;)V

    return-void
.end method

.method public l()V
    .locals 1

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->o()V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->p()V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->Q:Lcom/iflytek/voiceads/listener/IFLYVideoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->Q:Lcom/iflytek/voiceads/listener/IFLYVideoListener;

    invoke-interface {v0}, Lcom/iflytek/voiceads/listener/IFLYVideoListener;->onVideoStart()V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 2

    const-string v0, "JZVideoPlayer"

    const-string v1, "onStateNormal"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->g:I

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->C()V

    return-void
.end method

.method public n()V
    .locals 2

    const-string v0, "JZVideoPlayer"

    const-string v1, "onStatePreparing"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->g:I

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->D()V

    return-void
.end method

.method public o()V
    .locals 4

    const-wide/16 v2, 0x0

    const-string v0, "JZVideoPlayer"

    const-string v1, "onStatePrepared"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->j:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->j:J

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/videolib/c;->a(J)V

    iput-wide v2, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->j:J

    :goto_0
    return-void

    :cond_0
    invoke-static {v2, v3}, Lcom/iflytek/voiceads/videolib/c;->a(J)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->t:I

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->e:Lcom/iflytek/voiceads/videolib/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->e:Lcom/iflytek/voiceads/videolib/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/videolib/a;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->e:Lcom/iflytek/voiceads/videolib/a;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/a;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "JZVideoPlayer"

    const-string v1, "\u64ad\u653e\u5730\u5740\u65e0\u6548"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->g:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->e:Lcom/iflytek/voiceads/videolib/a;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/a;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->e:Lcom/iflytek/voiceads/videolib/a;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/a;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/voiceads/utils/k;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->T:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->L()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->k()V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    invoke-static {}, Lcom/iflytek/voiceads/videolib/c;->e()V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->q()V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iget-boolean v0, v0, Lcom/iflytek/voiceads/e/h;->f:Z

    if-nez v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->O:Lcom/iflytek/voiceads/e/g;

    iget-object v1, v1, Lcom/iflytek/voiceads/e/g;->n:Lorg/json/JSONArray;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/iflytek/voiceads/utils/j;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iput-boolean v2, v0, Lcom/iflytek/voiceads/e/h;->f:Z

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->g:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    invoke-static {}, Lcom/iflytek/voiceads/videolib/c;->f()V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->p()V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iget-boolean v0, v0, Lcom/iflytek/voiceads/e/h;->g:Z

    if-nez v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->O:Lcom/iflytek/voiceads/e/g;

    iget-object v1, v1, Lcom/iflytek/voiceads/e/g;->o:Lorg/json/JSONArray;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/iflytek/voiceads/utils/j;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iput-boolean v2, v0, Lcom/iflytek/voiceads/e/h;->g:Z

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->g:I

    if-ne v0, v4, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->k()V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iget-boolean v0, v0, Lcom/iflytek/voiceads/e/h;->k:Z

    if-nez v0, :cond_7

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->O:Lcom/iflytek/voiceads/e/g;

    iget-object v1, v1, Lcom/iflytek/voiceads/e/g;->s:Lorg/json/JSONArray;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/iflytek/voiceads/utils/j;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iput-boolean v2, v0, Lcom/iflytek/voiceads/e/h;->k:Z

    :cond_7
    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->Q:Lcom/iflytek/voiceads/listener/IFLYVideoListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->Q:Lcom/iflytek/voiceads/listener/IFLYVideoListener;

    invoke-interface {v0}, Lcom/iflytek/voiceads/listener/IFLYVideoListener;->onVideoReplay()V

    goto/16 :goto_0

    :cond_8
    iget v1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->u:I

    if-ne v0, v1, :cond_a

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->g:I

    if-eq v0, v4, :cond_1

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->h:I

    if-ne v0, v2, :cond_9

    invoke-static {}, Lcom/iflytek/voiceads/videolib/JZPlayer;->b()Z

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iget-boolean v0, v0, Lcom/iflytek/voiceads/e/h;->n:Z

    if-nez v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->O:Lcom/iflytek/voiceads/e/g;

    iget-object v1, v1, Lcom/iflytek/voiceads/e/g;->v:Lorg/json/JSONArray;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/iflytek/voiceads/utils/j;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iput-boolean v2, v0, Lcom/iflytek/voiceads/e/h;->n:Z

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->G()V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iget-boolean v0, v0, Lcom/iflytek/voiceads/e/h;->m:Z

    if-nez v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->O:Lcom/iflytek/voiceads/e/g;

    iget-object v1, v1, Lcom/iflytek/voiceads/e/g;->u:Lorg/json/JSONArray;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/iflytek/voiceads/utils/j;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iput-boolean v2, v0, Lcom/iflytek/voiceads/e/h;->m:Z

    goto/16 :goto_0

    :cond_a
    iget v1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->v:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->i:I

    if-nez v0, :cond_b

    invoke-static {v3}, Lcom/iflytek/voiceads/videolib/c;->a(Z)V

    iput v2, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->i:I

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->o:Landroid/widget/ImageView;

    iget v1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->B:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iget-boolean v0, v0, Lcom/iflytek/voiceads/e/h;->j:Z

    if-nez v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->O:Lcom/iflytek/voiceads/e/g;

    iget-object v1, v1, Lcom/iflytek/voiceads/e/g;->r:Lorg/json/JSONArray;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/iflytek/voiceads/utils/j;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iput-boolean v2, v0, Lcom/iflytek/voiceads/e/h;->j:Z

    goto/16 :goto_0

    :cond_b
    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->i:I

    if-ne v0, v2, :cond_1

    invoke-static {v2}, Lcom/iflytek/voiceads/videolib/c;->a(Z)V

    iput v3, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->i:I

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->o:Landroid/widget/ImageView;

    iget v1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->C:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iget-boolean v0, v0, Lcom/iflytek/voiceads/e/h;->i:Z

    if-nez v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->O:Lcom/iflytek/voiceads/e/g;

    iget-object v1, v1, Lcom/iflytek/voiceads/e/g;->q:Lorg/json/JSONArray;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/iflytek/voiceads/utils/j;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->P:Lcom/iflytek/voiceads/e/h;

    iput-boolean v2, v0, Lcom/iflytek/voiceads/e/h;->i:Z

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->D:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->E:I

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v1, v0

    iget v2, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->E:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->D:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/voiceads/videolib/JZPlayer;->setMeasuredDimension(II)V

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/iflytek/voiceads/videolib/JZPlayer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->C()V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->B()V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->g:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->g:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->F()J

    move-result-wide v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/videolib/c;->a(J)V

    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public p()V
    .locals 2

    const-string v0, "JZVideoPlayer"

    const-string v1, "onStatePlaying"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->g:I

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->B()V

    return-void
.end method

.method public q()V
    .locals 2

    const-string v0, "JZVideoPlayer"

    const-string v1, "onStatePause"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->g:I

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->B()V

    return-void
.end method

.method public r()V
    .locals 2

    const-string v0, "JZVideoPlayer"

    const-string v1, "onStateError"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x7

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->g:I

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->C()V

    return-void
.end method

.method public s()V
    .locals 2

    const-string v0, "JZVideoPlayer"

    const-string v1, "onStateAutoComplete"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->g:I

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->C()V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->l:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->q:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public t()V
    .locals 2

    const-string v0, "JZVideoPlayer"

    const-string v1, "onAutoCompletion"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->s()V

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/iflytek/voiceads/videolib/JZPlayer;->b()Z

    :cond_0
    invoke-static {}, Lcom/iflytek/voiceads/videolib/c;->a()Lcom/iflytek/voiceads/videolib/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/c;->g()V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/voiceads/videolib/n;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_1
    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->Q:Lcom/iflytek/voiceads/listener/IFLYVideoListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->Q:Lcom/iflytek/voiceads/listener/IFLYVideoListener;

    invoke-interface {v0}, Lcom/iflytek/voiceads/listener/IFLYVideoListener;->onVideoComplete()V

    :cond_2
    return-void
.end method

.method public u()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "JZVideoPlayer"

    const-string v1, "onCompletion"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->C()V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->m()V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->r:Landroid/view/ViewGroup;

    sget-object v1, Lcom/iflytek/voiceads/videolib/c;->a:Lcom/iflytek/voiceads/videolib/JZTextureView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-static {}, Lcom/iflytek/voiceads/videolib/c;->a()Lcom/iflytek/voiceads/videolib/c;

    move-result-object v0

    iput v2, v0, Lcom/iflytek/voiceads/videolib/c;->g:I

    invoke-static {}, Lcom/iflytek/voiceads/videolib/c;->a()Lcom/iflytek/voiceads/videolib/c;

    move-result-object v0

    iput v2, v0, Lcom/iflytek/voiceads/videolib/c;->h:I

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->d:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/voiceads/videolib/n;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->y()V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/iflytek/voiceads/videolib/JZPlayer;->a:I

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/videolib/n;->a(Landroid/content/Context;I)V

    sget-object v0, Lcom/iflytek/voiceads/videolib/c;->d:Landroid/view/Surface;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/iflytek/voiceads/videolib/c;->d:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_1
    sget-object v0, Lcom/iflytek/voiceads/videolib/c;->c:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/iflytek/voiceads/videolib/c;->c:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_2
    sput-object v3, Lcom/iflytek/voiceads/videolib/c;->a:Lcom/iflytek/voiceads/videolib/JZTextureView;

    sput-object v3, Lcom/iflytek/voiceads/videolib/c;->c:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public v()V
    .locals 2

    const-string v0, "JZVideoPlayer"

    const-string v1, "initTextureView"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->x()V

    new-instance v0, Lcom/iflytek/voiceads/videolib/JZTextureView;

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/voiceads/videolib/JZTextureView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/voiceads/videolib/c;->a:Lcom/iflytek/voiceads/videolib/JZTextureView;

    sget-object v0, Lcom/iflytek/voiceads/videolib/c;->a:Lcom/iflytek/voiceads/videolib/JZTextureView;

    invoke-static {}, Lcom/iflytek/voiceads/videolib/c;->a()Lcom/iflytek/voiceads/videolib/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/videolib/JZTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public w()V
    .locals 3

    const/4 v2, -0x1

    const-string v0, "JZVideoPlayer"

    const-string v1, "addTextureView"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer;->r:Landroid/view/ViewGroup;

    sget-object v2, Lcom/iflytek/voiceads/videolib/c;->a:Lcom/iflytek/voiceads/videolib/JZTextureView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public x()V
    .locals 2

    const-string v0, "JZVideoPlayer"

    const-string v1, "removeTextureView"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/voiceads/videolib/c;->c:Landroid/graphics/SurfaceTexture;

    sget-object v0, Lcom/iflytek/voiceads/videolib/c;->a:Lcom/iflytek/voiceads/videolib/JZTextureView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/voiceads/videolib/c;->a:Lcom/iflytek/voiceads/videolib/JZTextureView;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/JZTextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/voiceads/videolib/c;->a:Lcom/iflytek/voiceads/videolib/JZTextureView;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/JZTextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v1, Lcom/iflytek/voiceads/videolib/c;->a:Lcom/iflytek/voiceads/videolib/JZTextureView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public y()V
    .locals 2

    const-string v0, "JZVideoPlayer"

    const-string v1, "clearFullscreenLayout"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/voiceads/videolib/n;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f020005

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public z()V
    .locals 3

    const-string v0, "JZVideoPlayer"

    const-string v1, "clearFloatScreen"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/iflytek/voiceads/videolib/JZPlayer;->a:I

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/videolib/n;->a(Landroid/content/Context;I)V

    invoke-static {}, Lcom/iflytek/voiceads/videolib/o;->c()Lcom/iflytek/voiceads/videolib/JZPlayer;

    move-result-object v1

    iget-object v0, v1, Lcom/iflytek/voiceads/videolib/JZPlayer;->r:Landroid/view/ViewGroup;

    sget-object v2, Lcom/iflytek/voiceads/videolib/c;->a:Lcom/iflytek/voiceads/videolib/JZTextureView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/voiceads/videolib/n;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/iflytek/voiceads/videolib/o;->b(Lcom/iflytek/voiceads/videolib/JZPlayer;)V

    return-void
.end method

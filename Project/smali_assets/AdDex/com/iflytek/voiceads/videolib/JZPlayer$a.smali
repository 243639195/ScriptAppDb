.class public Lcom/iflytek/voiceads/videolib/JZPlayer$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/voiceads/videolib/JZPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/voiceads/videolib/JZPlayer;


# direct methods
.method public constructor <init>(Lcom/iflytek/voiceads/videolib/JZPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/videolib/JZPlayer$a;->a:Lcom/iflytek/voiceads/videolib/JZPlayer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer$a;->a:Lcom/iflytek/voiceads/videolib/JZPlayer;

    iget v0, v0, Lcom/iflytek/voiceads/videolib/JZPlayer;->g:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer$a;->a:Lcom/iflytek/voiceads/videolib/JZPlayer;

    iget v0, v0, Lcom/iflytek/voiceads/videolib/JZPlayer;->g:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZPlayer$a;->a:Lcom/iflytek/voiceads/videolib/JZPlayer;

    iget-object v0, v0, Lcom/iflytek/voiceads/videolib/JZPlayer;->K:Landroid/os/Handler;

    new-instance v1, Lcom/iflytek/voiceads/videolib/m;

    invoke-direct {v1, p0}, Lcom/iflytek/voiceads/videolib/m;-><init>(Lcom/iflytek/voiceads/videolib/JZPlayer$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

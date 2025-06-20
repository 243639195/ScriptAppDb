.class Lcom/iflytek/voiceads/videolib/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iflytek/voiceads/videolib/JZPlayer$a;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/videolib/JZPlayer$a;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/videolib/m;->a:Lcom/iflytek/voiceads/videolib/JZPlayer$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/m;->a:Lcom/iflytek/voiceads/videolib/JZPlayer$a;

    iget-object v0, v0, Lcom/iflytek/voiceads/videolib/JZPlayer$a;->a:Lcom/iflytek/voiceads/videolib/JZPlayer;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->E()J

    move-result-wide v2

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/m;->a:Lcom/iflytek/voiceads/videolib/JZPlayer$a;

    iget-object v0, v0, Lcom/iflytek/voiceads/videolib/JZPlayer$a;->a:Lcom/iflytek/voiceads/videolib/JZPlayer;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->F()J

    move-result-wide v4

    const-wide/16 v0, 0x64

    mul-long v6, v2, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    div-long v0, v6, v0

    long-to-int v1, v0

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/m;->a:Lcom/iflytek/voiceads/videolib/JZPlayer$a;

    iget-object v0, v0, Lcom/iflytek/voiceads/videolib/JZPlayer$a;->a:Lcom/iflytek/voiceads/videolib/JZPlayer;

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/voiceads/videolib/JZPlayer;->a(IJJ)V

    return-void

    :cond_0
    move-wide v0, v4

    goto :goto_0
.end method

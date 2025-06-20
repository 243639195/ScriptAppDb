.class Lcom/iflytek/voiceads/videolib/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iflytek/voiceads/videolib/d;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/videolib/d;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/videolib/h;->a:Lcom/iflytek/voiceads/videolib/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/iflytek/voiceads/videolib/o;->c()Lcom/iflytek/voiceads/videolib/JZPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iflytek/voiceads/videolib/o;->c()Lcom/iflytek/voiceads/videolib/JZPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->K()V

    :cond_0
    return-void
.end method

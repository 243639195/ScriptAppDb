.class Lcom/iflytek/voiceads/videolib/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/iflytek/voiceads/videolib/d;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/videolib/d;I)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/videolib/g;->b:Lcom/iflytek/voiceads/videolib/d;

    iput p2, p0, Lcom/iflytek/voiceads/videolib/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/iflytek/voiceads/videolib/o;->c()Lcom/iflytek/voiceads/videolib/JZPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iflytek/voiceads/videolib/o;->c()Lcom/iflytek/voiceads/videolib/JZPlayer;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/voiceads/videolib/g;->a:I

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/videolib/JZPlayer;->d(I)V

    :cond_0
    return-void
.end method

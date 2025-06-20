.class public Lcom/iflytek/voiceads/videolib/JZVPStandard$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/voiceads/videolib/JZVPStandard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/voiceads/videolib/JZVPStandard;


# direct methods
.method public constructor <init>(Lcom/iflytek/voiceads/videolib/JZVPStandard;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard$a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard$a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->Y()V

    return-void
.end method

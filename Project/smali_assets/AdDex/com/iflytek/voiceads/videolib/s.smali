.class Lcom/iflytek/voiceads/videolib/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iflytek/voiceads/videolib/JZVPStandard;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/videolib/JZVPStandard;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/videolib/s;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/s;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    iget-object v0, v0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->s:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/s;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    iget-object v0, v0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

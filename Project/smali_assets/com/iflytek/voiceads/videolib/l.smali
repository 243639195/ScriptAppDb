.class Lcom/iflytek/voiceads/videolib/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/iflytek/voiceads/videolib/JZPlayer;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/videolib/JZPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/videolib/l;->a:Lcom/iflytek/voiceads/videolib/JZPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/l;->a:Lcom/iflytek/voiceads/videolib/JZPlayer;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->a()V

    goto :goto_0

    :pswitch_2
    :try_start_0
    invoke-static {}, Lcom/iflytek/voiceads/videolib/o;->c()Lcom/iflytek/voiceads/videolib/JZPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/iflytek/voiceads/videolib/JZPlayer;->g:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lcom/iflytek/voiceads/videolib/JZPlayer;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "JZVideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio focus"

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

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

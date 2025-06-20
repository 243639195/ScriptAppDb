.class public Lcom/iflytek/voiceads/videolib/JZVPStandard;
.super Lcom/iflytek/voiceads/videolib/JZPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/voiceads/videolib/JZVPStandard$a;
    }
.end annotation


# instance fields
.field public U:Landroid/widget/ProgressBar;

.field public V:Landroid/widget/ImageView;

.field public W:Landroid/widget/TextView;

.field public aa:Landroid/widget/LinearLayout;

.field public ab:I

.field public ac:I

.field public ad:I

.field public ae:I

.field public af:I

.field public ag:I

.field public ah:I

.field public ai:I

.field public aj:I

.field private ak:Ljava/util/Timer;

.field private al:Lcom/iflytek/voiceads/videolib/JZVPStandard$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/voiceads/videolib/JZPlayer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iflytek/voiceads/videolib/JZPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public L()V
    .locals 3

    invoke-super {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->L()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u60a8\u5f53\u524d\u6b63\u5728\u4f7f\u7528\u79fb\u52a8\u7f51\u7edc\uff0c\u7ee7\u7eed\u64ad\u653e\u5c06\u6d88\u8017\u6d41\u91cf\uff01"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u7ee7\u7eed"

    new-instance v2, Lcom/iflytek/voiceads/videolib/p;

    invoke-direct {v2, p0}, Lcom/iflytek/voiceads/videolib/p;-><init>(Lcom/iflytek/voiceads/videolib/JZVPStandard;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/iflytek/voiceads/videolib/q;

    invoke-direct {v2, p0}, Lcom/iflytek/voiceads/videolib/q;-><init>(Lcom/iflytek/voiceads/videolib/JZVPStandard;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/iflytek/voiceads/videolib/r;

    invoke-direct {v1, p0}, Lcom/iflytek/voiceads/videolib/r;-><init>(Lcom/iflytek/voiceads/videolib/JZVPStandard;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public M()V
    .locals 1

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->g:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->O()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->s:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->Q()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->P()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->s:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->S()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->R()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public N()V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x4

    move-object v0, p0

    move v3, v1

    move v4, v2

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->a(IIIII)V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->V()V

    return-void
.end method

.method public O()V
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x4

    move-object v0, p0

    move v2, v1

    move v4, v3

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->a(IIIII)V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->V()V

    return-void
.end method

.method public P()V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x4

    move-object v0, p0

    move v2, v1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->a(IIIII)V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->V()V

    return-void
.end method

.method public Q()V
    .locals 6

    const/4 v1, 0x4

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->a(IIIII)V

    return-void
.end method

.method public R()V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x4

    move-object v0, p0

    move v2, v1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->a(IIIII)V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->V()V

    return-void
.end method

.method public S()V
    .locals 6

    const/4 v1, 0x4

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->a(IIIII)V

    return-void
.end method

.method public T()V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x4

    move-object v0, p0

    move v3, v1

    move v4, v2

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->a(IIIII)V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->V()V

    return-void
.end method

.method public U()V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x4

    move-object v0, p0

    move v3, v1

    move v4, v1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->a(IIIII)V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->V()V

    return-void
.end method

.method public V()V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->m:Landroid/widget/ImageView;

    iget v1, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->ai:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->g:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->g:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->S:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->m:Landroid/widget/ImageView;

    iget v1, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->aj:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->m:Landroid/widget/ImageView;

    iget v1, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->ah:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public W()V
    .locals 4

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->X()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->ak:Ljava/util/Timer;

    new-instance v0, Lcom/iflytek/voiceads/videolib/JZVPStandard$a;

    invoke-direct {v0, p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard$a;-><init>(Lcom/iflytek/voiceads/videolib/JZVPStandard;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->al:Lcom/iflytek/voiceads/videolib/JZVPStandard$a;

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->ak:Ljava/util/Timer;

    iget-object v1, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->al:Lcom/iflytek/voiceads/videolib/JZVPStandard$a;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public X()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->ak:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->ak:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->al:Lcom/iflytek/voiceads/videolib/JZVPStandard$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->al:Lcom/iflytek/voiceads/videolib/JZVPStandard$a;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/JZVPStandard$a;->cancel()Z

    :cond_1
    return-void
.end method

.method public Y()V
    .locals 2

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->g:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->g:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->g:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/iflytek/voiceads/videolib/s;

    invoke-direct {v1, p0}, Lcom/iflytek/voiceads/videolib/s;-><init>(Lcom/iflytek/voiceads/videolib/JZVPStandard;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(IIIII)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->s:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->U:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->V:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->aa:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public a(IJ)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/voiceads/videolib/JZPlayer;->a(IJ)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->U:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->m:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/iflytek/voiceads/videolib/JZPlayer;->a(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->V:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->W:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public varargs a(Lcom/iflytek/voiceads/videolib/a;I[Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/voiceads/videolib/JZPlayer;->a(Lcom/iflytek/voiceads/videolib/a;I[Ljava/lang/Object;)V

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->h:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->n:Landroid/widget/ImageView;

    iget v1, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->af:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42780000    # 62.0f

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/videolib/n;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->e(I)V

    :cond_0
    :goto_0
    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->i:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->o:Landroid/widget/ImageView;

    iget v1, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->C:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->h:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->n:Landroid/widget/ImageView;

    iget v1, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->ag:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42340000    # 45.0f

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/videolib/n;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->e(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->i:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->o:Landroid/widget/ImageView;

    iget v1, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->B:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/iflytek/voiceads/videolib/JZPlayer;->b(Landroid/content/Context;)V

    const-string v0, "id"

    const-string v1, "ifly_ad_loading_progress"

    invoke-static {p1, v0, v1}, Lcom/iflytek/voiceads/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->ab:I

    const-string v0, "id"

    const-string v1, "ifly_ad_thumb"

    invoke-static {p1, v0, v1}, Lcom/iflytek/voiceads/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->ac:I

    const-string v0, "id"

    const-string v1, "ifly_ad_retry_btn"

    invoke-static {p1, v0, v1}, Lcom/iflytek/voiceads/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->ad:I

    const-string v0, "id"

    const-string v1, "ifly_ad_layout_retry"

    invoke-static {p1, v0, v1}, Lcom/iflytek/voiceads/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->ae:I

    const-string v0, "drawable"

    const-string v1, "ifly_ad_jz_shrink"

    invoke-static {p1, v0, v1}, Lcom/iflytek/voiceads/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->af:I

    const-string v0, "drawable"

    const-string v1, "ifly_ad_jz_enlarge"

    invoke-static {p1, v0, v1}, Lcom/iflytek/voiceads/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->ag:I

    const-string v0, "drawable"

    const-string v1, "ifly_ad_jz_click_play_selector"

    invoke-static {p1, v0, v1}, Lcom/iflytek/voiceads/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->ah:I

    const-string v0, "drawable"

    const-string v1, "ifly_ad_jz_click_pause_selector"

    invoke-static {p1, v0, v1}, Lcom/iflytek/voiceads/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->ai:I

    const-string v0, "drawable"

    const-string v1, "ifly_ad_jz_click_replay_selector"

    invoke-static {p1, v0, v1}, Lcom/iflytek/voiceads/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->aj:I

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->ab:I

    invoke-virtual {p0, v0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->U:Landroid/widget/ProgressBar;

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->ac:I

    invoke-virtual {p0, v0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->V:Landroid/widget/ImageView;

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->ad:I

    invoke-virtual {p0, v0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->W:Landroid/widget/TextView;

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->ae:I

    invoke-virtual {p0, v0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->aa:Landroid/widget/LinearLayout;

    return-void
.end method

.method public e(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method

.method public g()I
    .locals 3

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "ifly_ad_jz_layout_standard"

    invoke-static {v0, v1, v2}, Lcom/iflytek/voiceads/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public m()V
    .locals 0

    invoke-super {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->m()V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->N()V

    return-void
.end method

.method public n()V
    .locals 0

    invoke-super {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->n()V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->O()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/iflytek/voiceads/videolib/JZPlayer;->onClick(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->ac:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->e:Lcom/iflytek/voiceads/videolib/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->e:Lcom/iflytek/voiceads/videolib/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/videolib/a;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->e:Lcom/iflytek/voiceads/videolib/a;

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
    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->g:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->e:Lcom/iflytek/voiceads/videolib/a;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/a;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->e:Lcom/iflytek/voiceads/videolib/a;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/a;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/voiceads/utils/k;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->T:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->L()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->k()V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->g:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->k()V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->P:Lcom/iflytek/voiceads/e/h;

    iget-boolean v0, v0, Lcom/iflytek/voiceads/e/h;->k:Z

    if-nez v0, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->O:Lcom/iflytek/voiceads/e/g;

    iget-object v2, v2, Lcom/iflytek/voiceads/e/g;->s:Lorg/json/JSONArray;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/iflytek/voiceads/utils/j;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->P:Lcom/iflytek/voiceads/e/h;

    iput-boolean v3, v0, Lcom/iflytek/voiceads/e/h;->k:Z

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->z:I

    if-ne v0, v1, :cond_8

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->S:I

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->k:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->Q:Lcom/iflytek/voiceads/listener/IFLYVideoListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->Q:Lcom/iflytek/voiceads/listener/IFLYVideoListener;

    invoke-interface {v0}, Lcom/iflytek/voiceads/listener/IFLYVideoListener;->onAdClick()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->W()V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->M()V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->Q:Lcom/iflytek/voiceads/listener/IFLYVideoListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->Q:Lcom/iflytek/voiceads/listener/IFLYVideoListener;

    invoke-interface {v0}, Lcom/iflytek/voiceads/listener/IFLYVideoListener;->onAdClick()V

    goto/16 :goto_0

    :cond_8
    iget v1, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->ad:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->e:Lcom/iflytek/voiceads/videolib/a;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/a;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->e:Lcom/iflytek/voiceads/videolib/a;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/a;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/voiceads/utils/k;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->T:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->L()V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->v()V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->w()V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->e:Lcom/iflytek/voiceads/videolib/a;

    invoke-static {v0}, Lcom/iflytek/voiceads/videolib/c;->a(Lcom/iflytek/voiceads/videolib/a;)V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->n()V

    goto/16 :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/iflytek/voiceads/videolib/JZPlayer;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->X()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/iflytek/voiceads/videolib/JZPlayer;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->Y()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->S:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->W()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->x:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/iflytek/voiceads/videolib/JZPlayer;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->X()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->W()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public p()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->p()V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->Q()V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->P:Lcom/iflytek/voiceads/e/h;

    iget-boolean v0, v0, Lcom/iflytek/voiceads/e/h;->a:Z

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->O:Lcom/iflytek/voiceads/e/g;

    iget-object v2, v2, Lcom/iflytek/voiceads/e/g;->i:Lorg/json/JSONArray;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/iflytek/voiceads/utils/j;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->P:Lcom/iflytek/voiceads/e/h;

    iput-boolean v3, v0, Lcom/iflytek/voiceads/e/h;->a:Z

    :cond_0
    return-void
.end method

.method public q()V
    .locals 0

    invoke-super {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->q()V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->R()V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->W()V

    return-void
.end method

.method public r()V
    .locals 1

    invoke-super {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->r()V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->U()V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->Q:Lcom/iflytek/voiceads/listener/IFLYVideoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->Q:Lcom/iflytek/voiceads/listener/IFLYVideoListener;

    invoke-interface {v0}, Lcom/iflytek/voiceads/listener/IFLYVideoListener;->onAdPlayError()V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->s()V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->T()V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->X()V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->o:Landroid/widget/ImageView;

    iget v1, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->C:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->P:Lcom/iflytek/voiceads/e/h;

    iget-boolean v0, v0, Lcom/iflytek/voiceads/e/h;->e:Z

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->O:Lcom/iflytek/voiceads/e/g;

    iget-object v2, v2, Lcom/iflytek/voiceads/e/g;->m:Lorg/json/JSONArray;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/iflytek/voiceads/utils/j;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->P:Lcom/iflytek/voiceads/e/h;

    iput-boolean v3, v0, Lcom/iflytek/voiceads/e/h;->e:Z

    :cond_0
    return-void
.end method

.method public t()V
    .locals 0

    invoke-super {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->t()V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->X()V

    return-void
.end method

.method public u()V
    .locals 0

    invoke-super {p0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->u()V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->X()V

    return-void
.end method

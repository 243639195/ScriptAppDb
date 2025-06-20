.class Lcom/ds/daisi/floatview/ElfinFloatView$1;
.super Landroid/os/CountDownTimer;
.source "ElfinFloatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/floatview/ElfinFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/floatview/ElfinFloatView;


# direct methods
.method constructor <init>(Lcom/ds/daisi/floatview/ElfinFloatView;JJ)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$1;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    const/4 v0, 0x2

    .line 311
    new-array v1, v0, [I

    .line 312
    iget-object v2, p0, Lcom/ds/daisi/floatview/ElfinFloatView$1;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {v2}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$300(Lcom/ds/daisi/floatview/ElfinFloatView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 313
    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/ds/daisi/floatview/ElfinFloatView$1;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {v2}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ds/daisi/util/AppDeviceUtils;->getResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/ds/daisi/floatview/ElfinFloatView$1;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {v3}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$400(Lcom/ds/daisi/floatview/ElfinFloatView;)F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpl-float v1, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-ltz v1, :cond_3

    .line 314
    iget-object v1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$1;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {v1}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$500(Lcom/ds/daisi/floatview/ElfinFloatView;)Lcom/ds/daisi/AppContext;

    move-result-object v1

    iget v1, v1, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView$1;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    .line 315
    invoke-static {v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$500(Lcom/ds/daisi/floatview/ElfinFloatView;)Lcom/ds/daisi/AppContext;

    move-result-object v0

    iget v0, v0, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView$1;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$500(Lcom/ds/daisi/floatview/ElfinFloatView;)Lcom/ds/daisi/AppContext;

    move-result-object v0

    iget v0, v0, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    if-ne v0, v2, :cond_1

    .line 318
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView$1;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$300(Lcom/ds/daisi/floatview/ElfinFloatView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200a9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView$1;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$300(Lcom/ds/daisi/floatview/ElfinFloatView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02009e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 316
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView$1;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$300(Lcom/ds/daisi/floatview/ElfinFloatView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200b2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 323
    :cond_3
    iget-object v1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$1;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {v1}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$500(Lcom/ds/daisi/floatview/ElfinFloatView;)Lcom/ds/daisi/AppContext;

    move-result-object v1

    iget v1, v1, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    if-eq v1, v0, :cond_6

    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView$1;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    .line 324
    invoke-static {v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$500(Lcom/ds/daisi/floatview/ElfinFloatView;)Lcom/ds/daisi/AppContext;

    move-result-object v0

    iget v0, v0, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    if-ne v0, v3, :cond_4

    goto :goto_1

    .line 326
    :cond_4
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView$1;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$500(Lcom/ds/daisi/floatview/ElfinFloatView;)Lcom/ds/daisi/AppContext;

    move-result-object v0

    iget v0, v0, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    if-ne v0, v2, :cond_5

    .line 327
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView$1;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$300(Lcom/ds/daisi/floatview/ElfinFloatView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200ab

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 329
    :cond_5
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView$1;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$300(Lcom/ds/daisi/floatview/ElfinFloatView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200a2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 325
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView$1;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$300(Lcom/ds/daisi/floatview/ElfinFloatView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200b4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    return-void
.end method

.method public onTick(J)V
    .locals 3

    const-wide/16 v0, 0xbb8

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const-wide/16 v0, 0x7d0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 303
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$1;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$300(Lcom/ds/daisi/floatview/ElfinFloatView;)Landroid/widget/ImageView;

    move-result-object p1

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 304
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$1;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ds/daisi/floatview/ElfinFloatView;->changeToolBarState(Z)V

    :cond_0
    return-void
.end method

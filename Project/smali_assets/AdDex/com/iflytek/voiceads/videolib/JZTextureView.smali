.class public Lcom/iflytek/voiceads/videolib/JZTextureView;
.super Landroid/view/TextureView;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZTextureView;->a:I

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZTextureView;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZTextureView;->a:I

    iput v0, p0, Lcom/iflytek/voiceads/videolib/JZTextureView;->b:I

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZTextureView;->a:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/iflytek/voiceads/videolib/JZTextureView;->b:I

    if-eq v0, p2, :cond_1

    :cond_0
    iput p1, p0, Lcom/iflytek/voiceads/videolib/JZTextureView;->a:I

    iput p2, p0, Lcom/iflytek/voiceads/videolib/JZTextureView;->b:I

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZTextureView;->requestLayout()V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZTextureView;->getRotation()F

    move-result v0

    float-to-int v7, v0

    iget v4, p0, Lcom/iflytek/voiceads/videolib/JZTextureView;->a:I

    iget v2, p0, Lcom/iflytek/voiceads/videolib/JZTextureView;->b:I

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZTextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZTextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    sget v3, Lcom/iflytek/voiceads/videolib/JZPlayer;->b:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    const/16 v2, 0x5a

    if-eq v7, v2, :cond_0

    const/16 v2, 0x10e

    if-ne v7, v2, :cond_1

    :cond_0
    move v12, v1

    move v1, v0

    move v0, v12

    :cond_1
    mul-int v2, v4, v1

    div-int/2addr v2, v0

    :cond_2
    const/16 v3, 0x5a

    if-eq v7, v3, :cond_3

    const/16 v3, 0x10e

    if-ne v7, v3, :cond_4

    :cond_3
    move v12, p1

    move p1, p2

    move p2, v12

    :cond_4
    invoke-static {v4, p1}, Lcom/iflytek/voiceads/videolib/JZTextureView;->getDefaultSize(II)I

    move-result v5

    invoke-static {v2, p2}, Lcom/iflytek/voiceads/videolib/JZTextureView;->getDefaultSize(II)I

    move-result v3

    if-lez v4, :cond_5

    if-lez v2, :cond_5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const-string v5, "JZVideoPlayer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "widthMeasureSpec  ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "JZVideoPlayer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "heightMeasureSpec ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v8, v5, :cond_7

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v9, v5, :cond_7

    mul-int v5, v4, v3

    mul-int v8, v6, v2

    if-ge v5, v8, :cond_6

    mul-int v5, v3, v4

    div-int/2addr v5, v2

    :cond_5
    :goto_0
    if-eqz v0, :cond_e

    if-eqz v1, :cond_e

    if-eqz v4, :cond_e

    if-eqz v2, :cond_e

    sget v6, Lcom/iflytek/voiceads/videolib/JZPlayer;->b:I

    const/4 v8, 0x3

    if-ne v6, v8, :cond_a

    move v1, v2

    move v0, v4

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/iflytek/voiceads/videolib/JZTextureView;->setMeasuredDimension(II)V

    return-void

    :cond_6
    mul-int v5, v4, v3

    mul-int v8, v6, v2

    if-le v5, v8, :cond_11

    mul-int v3, v6, v2

    div-int/2addr v3, v4

    move v5, v6

    goto :goto_0

    :cond_7
    const/high16 v5, 0x40000000    # 2.0f

    if-ne v8, v5, :cond_8

    mul-int v5, v6, v2

    div-int/2addr v5, v4

    const/high16 v8, -0x80000000

    if-ne v9, v8, :cond_10

    if-le v5, v3, :cond_10

    mul-int v5, v3, v4

    div-int/2addr v5, v2

    goto :goto_0

    :cond_8
    const/high16 v5, 0x40000000    # 2.0f

    if-ne v9, v5, :cond_9

    mul-int v5, v3, v4

    div-int/2addr v5, v2

    const/high16 v9, -0x80000000

    if-ne v8, v9, :cond_5

    if-le v5, v6, :cond_5

    mul-int v3, v6, v2

    div-int/2addr v3, v4

    move v5, v6

    goto :goto_0

    :cond_9
    const/high16 v5, -0x80000000

    if-ne v9, v5, :cond_f

    if-le v2, v3, :cond_f

    mul-int v5, v3, v4

    div-int/2addr v5, v2

    :goto_2
    const/high16 v9, -0x80000000

    if-ne v8, v9, :cond_5

    if-le v5, v6, :cond_5

    mul-int v3, v6, v2

    div-int/2addr v3, v4

    move v5, v6

    goto :goto_0

    :cond_a
    sget v6, Lcom/iflytek/voiceads/videolib/JZPlayer;->b:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_e

    const/16 v6, 0x5a

    if-eq v7, v6, :cond_b

    const/16 v6, 0x10e

    if-ne v7, v6, :cond_c

    :cond_b
    move v12, v1

    move v1, v0

    move v0, v12

    :cond_c
    div-int v6, v2, v4

    div-int v7, v1, v0

    if-le v6, v7, :cond_d

    div-int v1, v0, v5

    mul-int/2addr v1, v3

    goto :goto_1

    :cond_d
    div-int/2addr v2, v4

    div-int v0, v1, v0

    if-ge v2, v0, :cond_e

    div-int v0, v1, v3

    mul-int/2addr v0, v5

    goto :goto_1

    :cond_e
    move v1, v3

    move v0, v5

    goto :goto_1

    :cond_f
    move v3, v2

    move v5, v4

    goto :goto_2

    :cond_10
    move v3, v5

    move v5, v6

    goto :goto_0

    :cond_11
    move v5, v6

    goto/16 :goto_0
.end method

.method public setRotation(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZTextureView;->getRotation()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/TextureView;->setRotation(F)V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/JZTextureView;->requestLayout()V

    :cond_0
    return-void
.end method

.class public Lcom/cyjh/share/view/PassWordView;
.super Landroid/view/View;
.source "PassWordView.java"


# instance fields
.field private isDrawText:Z

.field private isInputState:Z

.field private isShowRemindLine:Z

.field private mBoxDrawType:I

.field private mContext:Landroid/content/Context;

.field private mDrawBoxLineSize:I

.field private mDrawRemindLineState:Z

.field private mDrawTxtContent:Ljava/lang/String;

.field private mDrawTxtSize:I

.field private mHandler:Landroid/os/Handler;

.field private mInputStateBoxColor:I

.field private mInputStateTextColor:I

.field private mNoInputStateBoxColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPassText:Ljava/lang/String;

.field private mRemindLineColor:I

.field private mShowPassType:I

.field private mWidth:I

.field private mheight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/cyjh/share/view/PassWordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2, v0}, Lcom/cyjh/share/view/PassWordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 27
    iput-boolean p2, p0, Lcom/cyjh/share/view/PassWordView;->isInputState:Z

    .line 38
    iput p2, p0, Lcom/cyjh/share/view/PassWordView;->mBoxDrawType:I

    .line 39
    iput p2, p0, Lcom/cyjh/share/view/PassWordView;->mShowPassType:I

    const/4 p2, 0x1

    .line 41
    iput-boolean p2, p0, Lcom/cyjh/share/view/PassWordView;->isShowRemindLine:Z

    const/16 p3, 0x28

    .line 43
    iput p3, p0, Lcom/cyjh/share/view/PassWordView;->mWidth:I

    .line 44
    iput p3, p0, Lcom/cyjh/share/view/PassWordView;->mheight:I

    const-string p3, ""

    .line 46
    iput-object p3, p0, Lcom/cyjh/share/view/PassWordView;->mPassText:Ljava/lang/String;

    const-string p3, "*"

    .line 50
    iput-object p3, p0, Lcom/cyjh/share/view/PassWordView;->mDrawTxtContent:Ljava/lang/String;

    const/16 p3, 0x12

    .line 51
    iput p3, p0, Lcom/cyjh/share/view/PassWordView;->mDrawTxtSize:I

    const/4 p3, 0x4

    .line 53
    iput p3, p0, Lcom/cyjh/share/view/PassWordView;->mDrawBoxLineSize:I

    .line 116
    iput-object p1, p0, Lcom/cyjh/share/view/PassWordView;->mContext:Landroid/content/Context;

    .line 118
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/cyjh/share/view/PassWordView;->mPaint:Landroid/graphics/Paint;

    .line 119
    iget-object p1, p0, Lcom/cyjh/share/view/PassWordView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    iget-object p1, p0, Lcom/cyjh/share/view/PassWordView;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/cyjh/share/view/PassWordView;->mDrawBoxLineSize:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 123
    iget-object p1, p0, Lcom/cyjh/share/view/PassWordView;->mPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/CornerPathEffect;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p2, p3}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method static synthetic access$000(Lcom/cyjh/share/view/PassWordView;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/cyjh/share/view/PassWordView;->mDrawRemindLineState:Z

    return p0
.end method

.method static synthetic access$002(Lcom/cyjh/share/view/PassWordView;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/cyjh/share/view/PassWordView;->mDrawRemindLineState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/cyjh/share/view/PassWordView;)Landroid/os/Handler;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/cyjh/share/view/PassWordView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private drawInputBox(Landroid/graphics/Canvas;)V
    .locals 7

    .line 227
    iget-boolean v0, p0, Lcom/cyjh/share/view/PassWordView;->isInputState:Z

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/cyjh/share/view/PassWordView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/cyjh/share/view/PassWordView;->mInputStateBoxColor:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/cyjh/share/view/PassWordView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/cyjh/share/view/PassWordView;->mNoInputStateBoxColor:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 232
    :goto_0
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 233
    iget v0, p0, Lcom/cyjh/share/view/PassWordView;->mBoxDrawType:I

    packed-switch v0, :pswitch_data_0

    .line 241
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/cyjh/share/view/PassWordView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/cyjh/share/view/PassWordView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 242
    iget-object v1, p0, Lcom/cyjh/share/view/PassWordView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :pswitch_0
    const/4 v2, 0x0

    .line 238
    invoke-virtual {p0}, Lcom/cyjh/share/view/PassWordView;->getMeasuredHeight()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/cyjh/share/view/PassWordView;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/cyjh/share/view/PassWordView;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/cyjh/share/view/PassWordView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 235
    :pswitch_1
    invoke-virtual {p0}, Lcom/cyjh/share/view/PassWordView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/cyjh/share/view/PassWordView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/cyjh/share/view/PassWordView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x5

    int-to-float v2, v2

    iget-object v3, p0, Lcom/cyjh/share/view/PassWordView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private drawInputTextOrPicture(Landroid/graphics/Canvas;)V
    .locals 5

    .line 174
    iget-boolean v0, p0, Lcom/cyjh/share/view/PassWordView;->isDrawText:Z

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/cyjh/share/view/PassWordView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/cyjh/share/view/PassWordView;->mInputStateTextColor:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 178
    iget v0, p0, Lcom/cyjh/share/view/PassWordView;->mShowPassType:I

    const/high16 v1, 0x40000000    # 2.0f

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 191
    :pswitch_0
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/cyjh/share/view/PassWordView;->mDrawTxtSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 192
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/cyjh/share/view/PassWordView;->mPassText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 194
    invoke-virtual {p0}, Lcom/cyjh/share/view/PassWordView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/cyjh/share/view/PassWordView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    iget-object v4, p0, Lcom/cyjh/share/view/PassWordView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    div-float v3, v0, v3

    add-float/2addr v2, v3

    .line 195
    invoke-virtual {p0}, Lcom/cyjh/share/view/PassWordView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    div-float/2addr v0, v1

    sub-float/2addr v3, v0

    .line 196
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordView;->mPassText:Ljava/lang/String;

    iget-object v1, p0, Lcom/cyjh/share/view/PassWordView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 183
    :pswitch_1
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/cyjh/share/view/PassWordView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 184
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/cyjh/share/view/PassWordView;->mDrawTxtContent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 186
    invoke-virtual {p0}, Lcom/cyjh/share/view/PassWordView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/cyjh/share/view/PassWordView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    iget-object v4, p0, Lcom/cyjh/share/view/PassWordView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    div-float v3, v0, v3

    add-float/2addr v2, v3

    .line 187
    invoke-virtual {p0}, Lcom/cyjh/share/view/PassWordView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    div-float/2addr v0, v1

    sub-float/2addr v3, v0

    .line 188
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordView;->mDrawTxtContent:Ljava/lang/String;

    iget-object v1, p0, Lcom/cyjh/share/view/PassWordView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 180
    :pswitch_2
    invoke-virtual {p0}, Lcom/cyjh/share/view/PassWordView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/cyjh/share/view/PassWordView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x41000000    # 8.0f

    iget-object v3, p0, Lcom/cyjh/share/view/PassWordView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private drawRemindLine(Landroid/graphics/Canvas;)V
    .locals 8

    .line 210
    iget-boolean v0, p0, Lcom/cyjh/share/view/PassWordView;->mDrawRemindLineState:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/cyjh/share/view/PassWordView;->isShowRemindLine:Z

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/cyjh/share/view/PassWordView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0xa

    if-gez v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/cyjh/share/view/PassWordView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/cyjh/share/view/PassWordView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 216
    iget-object v1, p0, Lcom/cyjh/share/view/PassWordView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/cyjh/share/view/PassWordView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/cyjh/share/view/PassWordView;->mRemindLineColor:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    invoke-virtual {p0}, Lcom/cyjh/share/view/PassWordView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v3, v1

    invoke-virtual {p0}, Lcom/cyjh/share/view/PassWordView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    int-to-float v4, v1

    invoke-virtual {p0}, Lcom/cyjh/share/view/PassWordView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    invoke-virtual {p0}, Lcom/cyjh/share/view/PassWordView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    int-to-float v6, v1

    iget-object v7, p0, Lcom/cyjh/share/view/PassWordView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .line 249
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 250
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 160
    invoke-direct {p0, p1}, Lcom/cyjh/share/view/PassWordView;->drawInputBox(Landroid/graphics/Canvas;)V

    .line 162
    invoke-direct {p0, p1}, Lcom/cyjh/share/view/PassWordView;->drawRemindLine(Landroid/graphics/Canvas;)V

    .line 164
    invoke-direct {p0, p1}, Lcom/cyjh/share/view/PassWordView;->drawInputTextOrPicture(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 128
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 129
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 130
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 131
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 132
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-ne p1, v3, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    iget v4, p0, Lcom/cyjh/share/view/PassWordView;->mWidth:I

    if-ne p1, v2, :cond_1

    .line 142
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    if-ne p2, v3, :cond_2

    goto :goto_1

    .line 149
    :cond_2
    iget p1, p0, Lcom/cyjh/share/view/PassWordView;->mheight:I

    if-ne p2, v2, :cond_3

    .line 151
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_3
    move v1, p1

    .line 154
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/cyjh/share/view/PassWordView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setDrawTxtContent(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/cyjh/share/view/PassWordView;->mDrawTxtContent:Ljava/lang/String;

    return-void
.end method

.method public setInputState(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/cyjh/share/view/PassWordView;->isInputState:Z

    return-void
.end method

.method public setInputStateColor(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/cyjh/share/view/PassWordView;->mInputStateBoxColor:I

    return-void
.end method

.method public setInputStateTextColor(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/cyjh/share/view/PassWordView;->mInputStateTextColor:I

    return-void
.end method

.method public setNoinputColor(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/cyjh/share/view/PassWordView;->mNoInputStateBoxColor:I

    return-void
.end method

.method public setRemindLineColor(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/cyjh/share/view/PassWordView;->mRemindLineColor:I

    return-void
.end method

.method public setmBoxDrawType(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/cyjh/share/view/PassWordView;->mBoxDrawType:I

    return-void
.end method

.method public setmDrawBoxLineSize(I)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/cyjh/share/view/PassWordView;->mDrawBoxLineSize:I

    return-void
.end method

.method public setmDrawTxtSize(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/cyjh/share/view/PassWordView;->mDrawTxtSize:I

    return-void
.end method

.method public setmIsShowRemindLine(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/cyjh/share/view/PassWordView;->isShowRemindLine:Z

    return-void
.end method

.method public setmPassText(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/cyjh/share/view/PassWordView;->mPassText:Ljava/lang/String;

    return-void
.end method

.method public setmShowPassType(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/cyjh/share/view/PassWordView;->mShowPassType:I

    return-void
.end method

.method public startInputState()V
    .locals 2

    const/4 v0, 0x1

    .line 280
    iput-boolean v0, p0, Lcom/cyjh/share/view/PassWordView;->isInputState:Z

    const/4 v0, 0x0

    .line 281
    iput-boolean v0, p0, Lcom/cyjh/share/view/PassWordView;->isDrawText:Z

    .line 283
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cyjh/share/view/PassWordView;->mHandler:Landroid/os/Handler;

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 288
    iget-boolean v0, p0, Lcom/cyjh/share/view/PassWordView;->isShowRemindLine:Z

    if-nez v0, :cond_1

    .line 289
    invoke-virtual {p0}, Lcom/cyjh/share/view/PassWordView;->invalidate()V

    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/cyjh/share/view/PassWordView$1;

    invoke-direct {v1, p0}, Lcom/cyjh/share/view/PassWordView$1;-><init>(Lcom/cyjh/share/view/PassWordView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateInputState(Z)V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 266
    iput-boolean p1, p0, Lcom/cyjh/share/view/PassWordView;->isInputState:Z

    .line 267
    iput-boolean p1, p0, Lcom/cyjh/share/view/PassWordView;->isDrawText:Z

    goto :goto_0

    .line 269
    :cond_1
    iput-boolean v0, p0, Lcom/cyjh/share/view/PassWordView;->isInputState:Z

    .line 270
    iput-boolean v0, p0, Lcom/cyjh/share/view/PassWordView;->isDrawText:Z

    .line 272
    :goto_0
    iput-boolean v0, p0, Lcom/cyjh/share/view/PassWordView;->mDrawRemindLineState:Z

    .line 273
    invoke-virtual {p0}, Lcom/cyjh/share/view/PassWordView;->invalidate()V

    return-void
.end method

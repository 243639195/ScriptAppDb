.class public Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;
.super Ljava/lang/Object;
.source "ActionProcessButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/share/view/ActionProcessButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressBar"
.end annotation


# static fields
.field private static final ANIMATION_DURATION_MS:I = 0x7d0

.field private static final COLOR1:I = -0x4d000000

.field private static final COLOR2:I = -0x80000000

.field private static final COLOR3:I = 0x4d000000

.field private static final COLOR4:I = 0x1a000000

.field private static final FINISH_ANIMATION_DURATION_MS:I = 0x3e8

.field private static final INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private final mClipRect:Landroid/graphics/RectF;

.field private mColor1:I

.field private mColor2:I

.field private mColor3:I

.field private mColor4:I

.field private mFinishTime:J

.field private final mPaint:Landroid/graphics/Paint;

.field private mParent:Landroid/view/View;

.field private mRunning:Z

.field private mStartTime:J

.field private mTriggerPercentage:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 164
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 167
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mClipRect:Landroid/graphics/RectF;

    .line 180
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mBounds:Landroid/graphics/Rect;

    .line 183
    iput-object p1, p0, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mParent:Landroid/view/View;

    const/high16 p1, -0x4d000000

    .line 184
    iput p1, p0, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mColor1:I

    const/high16 p1, -0x80000000

    .line 185
    iput p1, p0, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mColor2:I

    const/high16 p1, 0x4d000000    # 1.34217728E8f

    .line 186
    iput p1, p0, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mColor3:I

    const/high16 p1, 0x1a000000

    .line 187
    iput p1, p0, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mColor4:I

    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;FFIF)V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 339
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 340
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 341
    sget-object p3, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {p3, p5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p3

    .line 342
    invoke-virtual {p1, p3, p3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 343
    iget-object p3, p0, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mPaint:Landroid/graphics/Paint;

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 344
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawTrigger(Landroid/graphics/Canvas;II)V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mColor1:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p2, p2

    int-to-float p3, p3

    .line 325
    iget v0, p0, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mTriggerPercentage:F

    mul-float v0, v0, p2

    iget-object v1, p0, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 220
    iget-object v0, v6, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 221
    iget-object v1, v6, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 222
    div-int/lit8 v8, v0, 0x2

    .line 223
    div-int/lit8 v9, v1, 0x2

    .line 225
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 226
    iget-object v0, v6, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 228
    iget-boolean v0, v6, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mRunning:Z

    const-wide/16 v2, 0x0

    const/4 v11, 0x0

    if-nez v0, :cond_1

    iget-wide v4, v6, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mFinishTime:J

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    iget v0, v6, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mTriggerPercentage:F

    cmpl-float v0, v0, v11

    if-lez v0, :cond_e

    iget v0, v6, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mTriggerPercentage:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_e

    .line 317
    invoke-direct {v6, v7, v8, v9}, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->drawTrigger(Landroid/graphics/Canvas;II)V

    goto/16 :goto_3

    .line 229
    :cond_1
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 230
    iget-wide v12, v6, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mStartTime:J

    sub-long v14, v4, v12

    const-wide/16 v12, 0x7d0

    rem-long/2addr v14, v12

    .line 231
    iget-wide v2, v6, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mStartTime:J

    sub-long v18, v4, v2

    div-long v18, v18, v12

    long-to-float v0, v14

    const/high16 v2, 0x41a00000    # 20.0f

    div-float v12, v0, v2

    .line 236
    iget-boolean v0, v6, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mRunning:Z

    const/high16 v13, 0x42c80000    # 100.0f

    if-nez v0, :cond_3

    .line 239
    iget-wide v14, v6, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mFinishTime:J

    sub-long v20, v4, v14

    const-wide/16 v14, 0x3e8

    cmp-long v0, v20, v14

    if-ltz v0, :cond_2

    const-wide/16 v2, 0x0

    .line 240
    iput-wide v2, v6, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mFinishTime:J

    return-void

    .line 247
    :cond_2
    iget-wide v2, v6, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mFinishTime:J

    sub-long v20, v4, v2

    rem-long v2, v20, v14

    long-to-float v0, v2

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v0, v2

    div-float/2addr v0, v13

    int-to-float v2, v8

    .line 251
    sget-object v3, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float v0, v0, v2

    .line 252
    iget-object v3, v6, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mClipRect:Landroid/graphics/RectF;

    sub-float v4, v2, v0

    add-float/2addr v2, v0

    int-to-float v0, v1

    invoke-virtual {v3, v4, v11, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 253
    iget-object v0, v6, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mClipRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1, v1}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    const/4 v2, 0x1

    const-wide/16 v0, 0x0

    const/4 v14, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    const-wide/16 v0, 0x0

    const/4 v14, 0x0

    :goto_1
    cmp-long v2, v18, v0

    const/high16 v15, 0x42960000    # 75.0f

    const/high16 v16, 0x42480000    # 50.0f

    const/high16 v17, 0x41c80000    # 25.0f

    if-nez v2, :cond_4

    .line 263
    iget v0, v6, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mColor1:I

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_2

    :cond_4
    cmpl-float v0, v12, v11

    if-ltz v0, :cond_5

    cmpg-float v0, v12, v17

    if-gez v0, :cond_5

    .line 266
    iget v0, v6, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mColor4:I

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_2

    :cond_5
    cmpl-float v0, v12, v17

    if-ltz v0, :cond_6

    cmpg-float v0, v12, v16

    if-gez v0, :cond_6

    .line 268
    iget v0, v6, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mColor1:I

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_2

    :cond_6
    cmpl-float v0, v12, v16

    if-ltz v0, :cond_7

    cmpg-float v0, v12, v15

    if-gez v0, :cond_7

    .line 270
    iget v0, v6, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mColor2:I

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_2

    .line 272
    :cond_7
    iget v0, v6, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mColor3:I

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_2
    cmpl-float v0, v12, v11

    const/high16 v18, 0x40000000    # 2.0f

    if-ltz v0, :cond_8

    cmpg-float v0, v12, v17

    if-gtz v0, :cond_8

    add-float v0, v12, v17

    mul-float v0, v0, v18

    div-float v5, v0, v13

    int-to-float v2, v8

    int-to-float v3, v9

    .line 284
    iget v4, v6, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mColor1:I

    move-object v0, v6

    move-object v1, v7

    invoke-direct/range {v0 .. v5}, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    :cond_8
    cmpl-float v0, v12, v11

    if-ltz v0, :cond_9

    cmpg-float v0, v12, v16

    if-gtz v0, :cond_9

    mul-float v0, v12, v18

    div-float v5, v0, v13

    int-to-float v2, v8

    int-to-float v3, v9

    .line 288
    iget v4, v6, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mColor2:I

    move-object v0, v6

    move-object v1, v7

    invoke-direct/range {v0 .. v5}, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    :cond_9
    cmpl-float v0, v12, v17

    if-ltz v0, :cond_a

    cmpg-float v0, v12, v15

    if-gtz v0, :cond_a

    sub-float v0, v12, v17

    mul-float v0, v0, v18

    div-float v5, v0, v13

    int-to-float v2, v8

    int-to-float v3, v9

    .line 292
    iget v4, v6, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mColor3:I

    move-object v0, v6

    move-object v1, v7

    invoke-direct/range {v0 .. v5}, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    :cond_a
    cmpl-float v0, v12, v16

    if-ltz v0, :cond_b

    cmpg-float v0, v12, v13

    if-gtz v0, :cond_b

    sub-float v0, v12, v16

    mul-float v0, v0, v18

    div-float v5, v0, v13

    int-to-float v2, v8

    int-to-float v3, v9

    .line 296
    iget v4, v6, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mColor4:I

    move-object v0, v6

    move-object v1, v7

    invoke-direct/range {v0 .. v5}, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    :cond_b
    cmpl-float v0, v12, v15

    if-ltz v0, :cond_c

    cmpg-float v0, v12, v13

    if-gtz v0, :cond_c

    sub-float/2addr v12, v15

    mul-float v12, v12, v18

    div-float v5, v12, v13

    int-to-float v2, v8

    int-to-float v3, v9

    .line 300
    iget v4, v6, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mColor1:I

    move-object v0, v6

    move-object v1, v7

    invoke-direct/range {v0 .. v5}, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    .line 302
    :cond_c
    iget v0, v6, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mTriggerPercentage:F

    cmpl-float v0, v0, v11

    if-lez v0, :cond_d

    if-eqz v14, :cond_d

    .line 307
    invoke-virtual {v7, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 308
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 309
    iget-object v1, v6, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 310
    invoke-direct {v6, v7, v8, v9}, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->drawTrigger(Landroid/graphics/Canvas;II)V

    move v10, v0

    .line 313
    :cond_d
    iget-object v0, v6, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mParent:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 320
    :cond_e
    :goto_3
    invoke-virtual {v7, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method setBounds(IIII)V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mBounds:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 352
    iget-object p1, p0, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mBounds:Landroid/graphics/Rect;

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 353
    iget-object p1, p0, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mBounds:Landroid/graphics/Rect;

    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 354
    iget-object p1, p0, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mBounds:Landroid/graphics/Rect;

    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method setColorScheme(IIII)V
    .locals 0

    .line 201
    iput p1, p0, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mColor1:I

    .line 202
    iput p2, p0, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mColor2:I

    .line 203
    iput p3, p0, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mColor3:I

    .line 204
    iput p4, p0, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mColor4:I

    return-void
.end method

.method start()V
    .locals 2

    .line 211
    iget-boolean v0, p0, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 212
    iput v0, p0, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mTriggerPercentage:F

    .line 213
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mStartTime:J

    const/4 v0, 0x1

    .line 214
    iput-boolean v0, p0, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mRunning:Z

    .line 215
    iget-object v0, p0, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

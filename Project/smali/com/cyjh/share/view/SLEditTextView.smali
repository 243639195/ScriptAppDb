.class public Lcom/cyjh/share/view/SLEditTextView;
.super Landroid/support/v7/widget/AppCompatEditText;
.source "SLEditTextView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final DRAWABLE_BOTTOM:I = 0x3

.field private static final DRAWABLE_LEFT:I = 0x0

.field private static final DRAWABLE_RIGHT:I = 0x2

.field private static final DRAWABLE_TOP:I = 0x1


# instance fields
.field private color:I

.field private hasFoucs:Z

.field private mClearDrawable:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mLeftDrawable:Landroid/graphics/drawable/Drawable;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-direct {p0, p1}, Lcom/cyjh/share/view/SLEditTextView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/cyjh/share/view/SLEditTextView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    invoke-direct {p0, p1}, Lcom/cyjh/share/view/SLEditTextView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private drawLine()V
    .locals 2

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cyjh/share/view/SLEditTextView;->mPaint:Landroid/graphics/Paint;

    .line 87
    iget-object v0, p0, Lcom/cyjh/share/view/SLEditTextView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const-string v0, "#a9b7b7"

    .line 88
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyjh/share/view/SLEditTextView;->color:I

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/cyjh/share/view/SLEditTextView;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {p0, p1}, Lcom/cyjh/share/view/SLEditTextView;->setDrawable(Landroid/content/Context;)V

    .line 77
    invoke-virtual {p0, p0}, Lcom/cyjh/share/view/SLEditTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 78
    invoke-virtual {p0, p0}, Lcom/cyjh/share/view/SLEditTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 p1, 0x1

    .line 81
    invoke-direct {p0, p1}, Lcom/cyjh/share/view/SLEditTextView;->updateDrawable(Z)V

    return-void
.end method

.method private updateDrawable(Z)V
    .locals 4

    .line 117
    invoke-virtual {p0}, Lcom/cyjh/share/view/SLEditTextView;->length()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lcom/cyjh/share/view/SLEditTextView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/cyjh/share/view/SLEditTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/cyjh/share/view/SLEditTextView;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/cyjh/share/view/SLEditTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v1, v3, v1

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/cyjh/share/view/SLEditTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/cyjh/share/view/SLEditTextView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/cyjh/share/view/SLEditTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/cyjh/share/view/SLEditTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v1, v3, v1

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/cyjh/share/view/SLEditTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    const/4 p1, 0x1

    .line 157
    invoke-direct {p0, p1}, Lcom/cyjh/share/view/SLEditTextView;->updateDrawable(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public clearDeleteIcon()V
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/cyjh/share/view/SLEditTextView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/cyjh/share/view/SLEditTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p0}, Lcom/cyjh/share/view/SLEditTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/cyjh/share/view/SLEditTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Lcom/cyjh/share/view/SLEditTextView;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 169
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 93
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 145
    iput-boolean p2, p0, Lcom/cyjh/share/view/SLEditTextView;->hasFoucs:Z

    .line 146
    invoke-direct {p0, p2}, Lcom/cyjh/share/view/SLEditTextView;->updateDrawable(Z)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 162
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatEditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 128
    invoke-virtual {p0}, Lcom/cyjh/share/view/SLEditTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/cyjh/share/view/SLEditTextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/cyjh/share/view/SLEditTextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/cyjh/share/view/SLEditTextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/cyjh/share/view/SLEditTextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const-string v0, ""

    .line 136
    invoke-virtual {p0, v0}, Lcom/cyjh/share/view/SLEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setDrawable(Landroid/content/Context;)V
    .locals 4

    .line 100
    invoke-virtual {p0}, Lcom/cyjh/share/view/SLEditTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/cyjh/share/view/SLEditTextView;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 101
    iget-object v0, p0, Lcom/cyjh/share/view/SLEditTextView;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/cyjh/share/view/SLEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/cyjh/share/R$drawable;->icon_clear_edit:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/view/SLEditTextView;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/cyjh/share/view/SLEditTextView;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-static {p1, v1}, Lcom/cyjh/share/view/SLEditTextView;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p1, v1}, Lcom/cyjh/share/view/SLEditTextView;->dip2px(Landroid/content/Context;F)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 108
    invoke-virtual {p0}, Lcom/cyjh/share/view/SLEditTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/cyjh/share/view/SLEditTextView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 109
    iget-object v0, p0, Lcom/cyjh/share/view/SLEditTextView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/cyjh/share/view/SLEditTextView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {p1, v1}, Lcom/cyjh/share/view/SLEditTextView;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p1, v1}, Lcom/cyjh/share/view/SLEditTextView;->dip2px(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {v0, v3, v3, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    return-void
.end method

.class public abstract Lcom/cyjh/share/view/ProcessButton;
.super Lcom/cyjh/share/view/FlatButton;
.source "ProcessButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/share/view/ProcessButton$SavedState;
    }
.end annotation


# instance fields
.field private mCompleteDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mCompleteText:Ljava/lang/CharSequence;

.field private mErrorDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mErrorText:Ljava/lang/CharSequence;

.field private mLoadingText:Ljava/lang/CharSequence;

.field private mMaxProgress:I

.field private mMinProgress:I

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lcom/cyjh/share/view/FlatButton;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/cyjh/share/view/ProcessButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/cyjh/share/view/FlatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/cyjh/share/view/ProcessButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/cyjh/share/view/FlatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/cyjh/share/view/ProcessButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/cyjh/share/view/ProcessButton;->mMinProgress:I

    const/16 v0, 0x64

    .line 44
    iput v0, p0, Lcom/cyjh/share/view/ProcessButton;->mMaxProgress:I

    .line 46
    sget v0, Lcom/cyjh/share/R$drawable;->rect_progress:I

    invoke-virtual {p0, v0}, Lcom/cyjh/share/view/ProcessButton;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/cyjh/share/view/ProcessButton;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 47
    iget-object v0, p0, Lcom/cyjh/share/view/ProcessButton;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/cyjh/share/view/ProcessButton;->getCornerRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 49
    sget v0, Lcom/cyjh/share/R$drawable;->rect_complete:I

    invoke-virtual {p0, v0}, Lcom/cyjh/share/view/ProcessButton;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/cyjh/share/view/ProcessButton;->mCompleteDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 50
    iget-object v0, p0, Lcom/cyjh/share/view/ProcessButton;->mCompleteDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/cyjh/share/view/ProcessButton;->getCornerRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 52
    sget v0, Lcom/cyjh/share/R$drawable;->rect_error:I

    invoke-virtual {p0, v0}, Lcom/cyjh/share/view/ProcessButton;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/cyjh/share/view/ProcessButton;->mErrorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 53
    iget-object v0, p0, Lcom/cyjh/share/view/ProcessButton;->mErrorDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/cyjh/share/view/ProcessButton;->getCornerRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    if-eqz p2, :cond_0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/cyjh/share/view/ProcessButton;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :cond_0
    return-void
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 61
    sget-object v0, Lcom/cyjh/share/R$styleable;->ProcessButton:[I

    invoke-virtual {p0, p1, p2, v0}, Lcom/cyjh/share/view/ProcessButton;->getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 68
    :cond_0
    :try_start_0
    sget p2, Lcom/cyjh/share/R$styleable;->ProcessButton_pb_textProgress:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/cyjh/share/view/ProcessButton;->mLoadingText:Ljava/lang/CharSequence;

    .line 69
    sget p2, Lcom/cyjh/share/R$styleable;->ProcessButton_pb_textComplete:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/cyjh/share/view/ProcessButton;->mCompleteText:Ljava/lang/CharSequence;

    .line 70
    sget p2, Lcom/cyjh/share/R$styleable;->ProcessButton_pb_textError:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/cyjh/share/view/ProcessButton;->mErrorText:Ljava/lang/CharSequence;

    .line 72
    sget p2, Lcom/cyjh/share/R$color;->purple_progress:I

    invoke-virtual {p0, p2}, Lcom/cyjh/share/view/ProcessButton;->getColor(I)I

    move-result p2

    .line 73
    sget v0, Lcom/cyjh/share/R$styleable;->ProcessButton_pb_colorProgress:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 74
    iget-object v0, p0, Lcom/cyjh/share/view/ProcessButton;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 76
    sget p2, Lcom/cyjh/share/R$color;->green_complete:I

    invoke-virtual {p0, p2}, Lcom/cyjh/share/view/ProcessButton;->getColor(I)I

    move-result p2

    .line 77
    sget v0, Lcom/cyjh/share/R$styleable;->ProcessButton_pb_colorComplete:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 78
    iget-object v0, p0, Lcom/cyjh/share/view/ProcessButton;->mCompleteDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 80
    sget p2, Lcom/cyjh/share/R$color;->red_error:I

    invoke-virtual {p0, p2}, Lcom/cyjh/share/view/ProcessButton;->getColor(I)I

    move-result p2

    .line 81
    sget v0, Lcom/cyjh/share/R$styleable;->ProcessButton_pb_colorError:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 82
    iget-object v0, p0, Lcom/cyjh/share/view/ProcessButton;->mErrorDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    throw p2
.end method


# virtual methods
.method public abstract drawProgress(Landroid/graphics/Canvas;)V
.end method

.method public getCompleteDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/cyjh/share/view/ProcessButton;->mCompleteDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method public getCompleteText()Ljava/lang/CharSequence;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/cyjh/share/view/ProcessButton;->mCompleteText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getErrorDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/cyjh/share/view/ProcessButton;->mErrorDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method public getErrorText()Ljava/lang/CharSequence;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/cyjh/share/view/ProcessButton;->mErrorText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getLoadingText()Ljava/lang/CharSequence;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/cyjh/share/view/ProcessButton;->mLoadingText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getMaxProgress()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/cyjh/share/view/ProcessButton;->mMaxProgress:I

    return v0
.end method

.method public getMinProgress()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/cyjh/share/view/ProcessButton;->mMinProgress:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/cyjh/share/view/ProcessButton;->mProgress:I

    return v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/cyjh/share/view/ProcessButton;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method protected onCompleteState()V
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/cyjh/share/view/ProcessButton;->getCompleteText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/cyjh/share/view/ProcessButton;->getCompleteText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyjh/share/view/ProcessButton;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/cyjh/share/view/ProcessButton;->getCompleteDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyjh/share/view/ProcessButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 136
    iget v0, p0, Lcom/cyjh/share/view/ProcessButton;->mProgress:I

    iget v1, p0, Lcom/cyjh/share/view/ProcessButton;->mMinProgress:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/cyjh/share/view/ProcessButton;->mProgress:I

    iget v1, p0, Lcom/cyjh/share/view/ProcessButton;->mMaxProgress:I

    if-ge v0, v1, :cond_0

    .line 137
    invoke-virtual {p0, p1}, Lcom/cyjh/share/view/ProcessButton;->drawProgress(Landroid/graphics/Canvas;)V

    .line 140
    :cond_0
    invoke-super {p0, p1}, Lcom/cyjh/share/view/FlatButton;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onErrorState()V
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/cyjh/share/view/ProcessButton;->getErrorText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/cyjh/share/view/ProcessButton;->getErrorText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyjh/share/view/ProcessButton;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/cyjh/share/view/ProcessButton;->getErrorDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyjh/share/view/ProcessButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onNormalState()V
    .locals 1

    .line 127
    invoke-virtual {p0}, Lcom/cyjh/share/view/ProcessButton;->getNormalText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/cyjh/share/view/ProcessButton;->getNormalText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyjh/share/view/ProcessButton;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/cyjh/share/view/ProcessButton;->getNormalDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyjh/share/view/ProcessButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onProgress()V
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/cyjh/share/view/ProcessButton;->getLoadingText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/cyjh/share/view/ProcessButton;->getLoadingText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyjh/share/view/ProcessButton;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/cyjh/share/view/ProcessButton;->getNormalDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyjh/share/view/ProcessButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 216
    instance-of v0, p1, Lcom/cyjh/share/view/ProcessButton$SavedState;

    if-eqz v0, :cond_0

    .line 217
    check-cast p1, Lcom/cyjh/share/view/ProcessButton$SavedState;

    .line 218
    invoke-static {p1}, Lcom/cyjh/share/view/ProcessButton$SavedState;->access$000(Lcom/cyjh/share/view/ProcessButton$SavedState;)I

    move-result v0

    iput v0, p0, Lcom/cyjh/share/view/ProcessButton;->mProgress:I

    .line 219
    invoke-virtual {p1}, Lcom/cyjh/share/view/ProcessButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/cyjh/share/view/FlatButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 220
    iget p1, p0, Lcom/cyjh/share/view/ProcessButton;->mProgress:I

    invoke-virtual {p0, p1}, Lcom/cyjh/share/view/ProcessButton;->setProgress(I)V

    goto :goto_0

    .line 222
    :cond_0
    invoke-super {p0, p1}, Lcom/cyjh/share/view/FlatButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 207
    invoke-super {p0}, Lcom/cyjh/share/view/FlatButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 208
    new-instance v1, Lcom/cyjh/share/view/ProcessButton$SavedState;

    invoke-direct {v1, v0}, Lcom/cyjh/share/view/ProcessButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 209
    iget v0, p0, Lcom/cyjh/share/view/ProcessButton;->mProgress:I

    invoke-static {v1, v0}, Lcom/cyjh/share/view/ProcessButton$SavedState;->access$002(Lcom/cyjh/share/view/ProcessButton$SavedState;I)I

    return-object v1
.end method

.method public setCompleteDrawable(Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/cyjh/share/view/ProcessButton;->mCompleteDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method

.method public setCompleteText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/cyjh/share/view/ProcessButton;->mCompleteText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setErrorDrawable(Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/cyjh/share/view/ProcessButton;->mErrorDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method

.method public setErrorText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/cyjh/share/view/ProcessButton;->mErrorText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setLoadingText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/cyjh/share/view/ProcessButton;->mLoadingText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 90
    iput p1, p0, Lcom/cyjh/share/view/ProcessButton;->mProgress:I

    .line 92
    iget p1, p0, Lcom/cyjh/share/view/ProcessButton;->mProgress:I

    iget v0, p0, Lcom/cyjh/share/view/ProcessButton;->mMinProgress:I

    if-ne p1, v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/cyjh/share/view/ProcessButton;->onNormalState()V

    goto :goto_0

    .line 94
    :cond_0
    iget p1, p0, Lcom/cyjh/share/view/ProcessButton;->mProgress:I

    iget v0, p0, Lcom/cyjh/share/view/ProcessButton;->mMaxProgress:I

    if-ne p1, v0, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/cyjh/share/view/ProcessButton;->onCompleteState()V

    goto :goto_0

    .line 96
    :cond_1
    iget p1, p0, Lcom/cyjh/share/view/ProcessButton;->mProgress:I

    iget v0, p0, Lcom/cyjh/share/view/ProcessButton;->mMinProgress:I

    if-ge p1, v0, :cond_2

    .line 97
    invoke-virtual {p0}, Lcom/cyjh/share/view/ProcessButton;->onErrorState()V

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p0}, Lcom/cyjh/share/view/ProcessButton;->onProgress()V

    .line 102
    :goto_0
    invoke-virtual {p0}, Lcom/cyjh/share/view/ProcessButton;->invalidate()V

    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/cyjh/share/view/ProcessButton;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method

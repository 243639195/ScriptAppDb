.class public Lcom/cyjh/share/view/FlatButton;
.super Landroid/widget/Button;
.source "FlatButton.java"


# instance fields
.field private cornerRadius:F

.field private mNormalDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private mNormalText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/cyjh/share/view/FlatButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/cyjh/share/view/FlatButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/cyjh/share/view/FlatButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private createNormalDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/LayerDrawable;
    .locals 4

    .line 71
    sget v0, Lcom/cyjh/share/R$drawable;->rect_normal:I

    .line 72
    invoke-virtual {p0, v0}, Lcom/cyjh/share/view/FlatButton;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    .line 75
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 76
    invoke-virtual {p0}, Lcom/cyjh/share/view/FlatButton;->getCornerRadius()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 78
    sget v2, Lcom/cyjh/share/R$color;->blue_pressed:I

    invoke-virtual {p0, v2}, Lcom/cyjh/share/view/FlatButton;->getColor(I)I

    move-result v2

    .line 79
    sget v3, Lcom/cyjh/share/R$styleable;->FlatButton_pb_colorPressed:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 80
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v1, 0x1

    .line 83
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 84
    invoke-virtual {p0}, Lcom/cyjh/share/view/FlatButton;->getCornerRadius()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 86
    sget v2, Lcom/cyjh/share/R$color;->blue_normal:I

    invoke-virtual {p0, v2}, Lcom/cyjh/share/view/FlatButton;->getColor(I)I

    move-result v2

    .line 87
    sget v3, Lcom/cyjh/share/R$styleable;->FlatButton_pb_colorNormal:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 88
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method private createPressedDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 93
    sget v0, Lcom/cyjh/share/R$drawable;->rect_pressed:I

    .line 94
    invoke-virtual {p0, v0}, Lcom/cyjh/share/view/FlatButton;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 95
    invoke-virtual {p0}, Lcom/cyjh/share/view/FlatButton;->getCornerRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 97
    sget v1, Lcom/cyjh/share/R$color;->blue_pressed:I

    invoke-virtual {p0, v1}, Lcom/cyjh/share/view/FlatButton;->getColor(I)I

    move-result v1

    .line 98
    sget v2, Lcom/cyjh/share/R$styleable;->FlatButton_pb_colorPressed:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 99
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 38
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/cyjh/share/view/FlatButton;->mNormalDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eqz p2, :cond_0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/cyjh/share/view/FlatButton;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/cyjh/share/view/FlatButton;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/share/view/FlatButton;->mNormalText:Ljava/lang/CharSequence;

    .line 43
    iget-object p1, p0, Lcom/cyjh/share/view/FlatButton;->mNormalDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0, p1}, Lcom/cyjh/share/view/FlatButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 47
    sget-object v0, Lcom/cyjh/share/R$styleable;->FlatButton:[I

    invoke-virtual {p0, p1, p2, v0}, Lcom/cyjh/share/view/FlatButton;->getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 54
    :cond_0
    :try_start_0
    sget p2, Lcom/cyjh/share/R$dimen;->corner_radius:I

    invoke-virtual {p0, p2}, Lcom/cyjh/share/view/FlatButton;->getDimension(I)F

    move-result p2

    .line 55
    sget v0, Lcom/cyjh/share/R$styleable;->FlatButton_pb_cornerRadius:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/cyjh/share/view/FlatButton;->cornerRadius:F

    .line 57
    iget-object p2, p0, Lcom/cyjh/share/view/FlatButton;->mNormalDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a7

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 58
    invoke-direct {p0, p1}, Lcom/cyjh/share/view/FlatButton;->createPressedDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 57
    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 59
    iget-object p2, p0, Lcom/cyjh/share/view/FlatButton;->mNormalDrawable:Landroid/graphics/drawable/StateListDrawable;

    new-array v1, v0, [I

    const v2, 0x101009c

    aput v2, v1, v3

    .line 60
    invoke-direct {p0, p1}, Lcom/cyjh/share/view/FlatButton;->createPressedDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 59
    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 61
    iget-object p2, p0, Lcom/cyjh/share/view/FlatButton;->mNormalDrawable:Landroid/graphics/drawable/StateListDrawable;

    new-array v0, v0, [I

    const v1, 0x10100a1

    aput v1, v0, v3

    .line 62
    invoke-direct {p0, p1}, Lcom/cyjh/share/view/FlatButton;->createPressedDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 61
    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 63
    iget-object p2, p0, Lcom/cyjh/share/view/FlatButton;->mNormalDrawable:Landroid/graphics/drawable/StateListDrawable;

    new-array v0, v3, [I

    invoke-direct {p0, p1}, Lcom/cyjh/share/view/FlatButton;->createNormalDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    throw p2
.end method


# virtual methods
.method protected getColor(I)I
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/cyjh/share/view/FlatButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method public getCornerRadius()F
    .locals 1

    .line 121
    iget v0, p0, Lcom/cyjh/share/view/FlatButton;->cornerRadius:F

    return v0
.end method

.method protected getDimension(I)F
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/cyjh/share/view/FlatButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    return p1
.end method

.method protected getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/cyjh/share/view/FlatButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getNormalDrawable()Landroid/graphics/drawable/StateListDrawable;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/cyjh/share/view/FlatButton;->mNormalDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method public getNormalText()Ljava/lang/CharSequence;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/cyjh/share/view/FlatButton;->mNormalText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    return-object p1
.end method

.method public setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lcom/cyjh/share/view/FlatButton;->getPaddingLeft()I

    move-result v0

    .line 141
    invoke-virtual {p0}, Lcom/cyjh/share/view/FlatButton;->getPaddingTop()I

    move-result v1

    .line 142
    invoke-virtual {p0}, Lcom/cyjh/share/view/FlatButton;->getPaddingRight()I

    move-result v2

    .line 143
    invoke-virtual {p0}, Lcom/cyjh/share/view/FlatButton;->getPaddingBottom()I

    move-result v3

    .line 145
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_0

    .line 146
    invoke-virtual {p0, p1}, Lcom/cyjh/share/view/FlatButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cyjh/share/view/FlatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    :goto_0
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/cyjh/share/view/FlatButton;->setPadding(IIII)V

    return-void
.end method

.class public Lcom/cyjh/share/view/ActionProcessButton;
.super Lcom/cyjh/share/view/ProcessButton;
.source "ActionProcessButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;,
        Lcom/cyjh/share/view/ActionProcessButton$Mode;
    }
.end annotation


# instance fields
.field private mColor1:I

.field private mColor2:I

.field private mColor3:I

.field private mColor4:I

.field private mMode:Lcom/cyjh/share/view/ActionProcessButton$Mode;

.field private mProgressBar:Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/cyjh/share/view/ProcessButton;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-direct {p0, p1}, Lcom/cyjh/share/view/ActionProcessButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/cyjh/share/view/ProcessButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/cyjh/share/view/ActionProcessButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/cyjh/share/view/ProcessButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    invoke-direct {p0, p1}, Lcom/cyjh/share/view/ActionProcessButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method private drawEndlessProgress(Landroid/graphics/Canvas;)V
    .locals 5

    .line 131
    iget-object v0, p0, Lcom/cyjh/share/view/ActionProcessButton;->mProgressBar:Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;

    invoke-direct {v0, p0}, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/cyjh/share/view/ActionProcessButton;->mProgressBar:Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;

    .line 133
    invoke-direct {p0}, Lcom/cyjh/share/view/ActionProcessButton;->setupProgressBarBounds()V

    .line 134
    iget-object v0, p0, Lcom/cyjh/share/view/ActionProcessButton;->mProgressBar:Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;

    iget v1, p0, Lcom/cyjh/share/view/ActionProcessButton;->mColor1:I

    iget v2, p0, Lcom/cyjh/share/view/ActionProcessButton;->mColor2:I

    iget v3, p0, Lcom/cyjh/share/view/ActionProcessButton;->mColor3:I

    iget v4, p0, Lcom/cyjh/share/view/ActionProcessButton;->mColor4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->setColorScheme(IIII)V

    .line 135
    iget-object v0, p0, Lcom/cyjh/share/view/ActionProcessButton;->mProgressBar:Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;

    invoke-virtual {v0}, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->start()V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/cyjh/share/view/ActionProcessButton;->getProgress()I

    move-result v0

    if-lez v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/cyjh/share/view/ActionProcessButton;->mProgressBar:Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;

    invoke-virtual {v0, p1}, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method private drawLineProgress(Landroid/graphics/Canvas;)V
    .locals 8

    .line 121
    invoke-virtual {p0}, Lcom/cyjh/share/view/ActionProcessButton;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/cyjh/share/view/ActionProcessButton;->getMaxProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 122
    invoke-virtual {p0}, Lcom/cyjh/share/view/ActionProcessButton;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    .line 125
    invoke-virtual {p0}, Lcom/cyjh/share/view/ActionProcessButton;->getMeasuredHeight()I

    move-result v0

    int-to-double v2, v0

    invoke-virtual {p0}, Lcom/cyjh/share/view/ActionProcessButton;->getMeasuredHeight()I

    move-result v0

    int-to-double v4, v0

    const-wide v6, 0x3fa999999999999aL    # 0.05

    mul-double v4, v4, v6

    sub-double/2addr v2, v4

    double-to-int v0, v2

    .line 126
    invoke-virtual {p0}, Lcom/cyjh/share/view/ActionProcessButton;->getProgressDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/cyjh/share/view/ActionProcessButton;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 127
    invoke-virtual {p0}, Lcom/cyjh/share/view/ActionProcessButton;->getProgressDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 77
    sget-object v0, Lcom/cyjh/share/view/ActionProcessButton$Mode;->ENDLESS:Lcom/cyjh/share/view/ActionProcessButton$Mode;

    iput-object v0, p0, Lcom/cyjh/share/view/ActionProcessButton;->mMode:Lcom/cyjh/share/view/ActionProcessButton$Mode;

    .line 79
    sget v0, Lcom/cyjh/share/R$color;->holo_blue_bright:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/cyjh/share/view/ActionProcessButton;->mColor1:I

    .line 80
    sget v0, Lcom/cyjh/share/R$color;->holo_green_light:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/cyjh/share/view/ActionProcessButton;->mColor2:I

    .line 81
    sget v0, Lcom/cyjh/share/R$color;->holo_orange_light:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/cyjh/share/view/ActionProcessButton;->mColor3:I

    .line 82
    sget v0, Lcom/cyjh/share/R$color;->holo_red_light:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/cyjh/share/view/ActionProcessButton;->mColor4:I

    return-void
.end method

.method private setupProgressBarBounds()V
    .locals 5

    .line 144
    sget v0, Lcom/cyjh/share/R$dimen;->layer_padding:I

    invoke-virtual {p0, v0}, Lcom/cyjh/share/view/ActionProcessButton;->getDimension(I)F

    move-result v0

    float-to-double v0, v0

    .line 145
    invoke-virtual {p0}, Lcom/cyjh/share/view/ActionProcessButton;->getMeasuredHeight()I

    move-result v2

    int-to-double v2, v2

    sub-double/2addr v2, v0

    double-to-int v0, v2

    .line 146
    iget-object v1, p0, Lcom/cyjh/share/view/ActionProcessButton;->mProgressBar:Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;

    invoke-virtual {p0}, Lcom/cyjh/share/view/ActionProcessButton;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/cyjh/share/view/ActionProcessButton;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method public drawProgress(Landroid/graphics/Canvas;)V
    .locals 2

    .line 98
    invoke-virtual {p0}, Lcom/cyjh/share/view/ActionProcessButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cyjh/share/view/ActionProcessButton;->getNormalDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/cyjh/share/view/ActionProcessButton;->getNormalDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyjh/share/view/ActionProcessButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    :cond_0
    sget-object v0, Lcom/cyjh/share/view/ActionProcessButton$1;->$SwitchMap$com$cyjh$share$view$ActionProcessButton$Mode:[I

    iget-object v1, p0, Lcom/cyjh/share/view/ActionProcessButton;->mMode:Lcom/cyjh/share/view/ActionProcessButton$Mode;

    invoke-virtual {v1}, Lcom/cyjh/share/view/ActionProcessButton$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 107
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/cyjh/share/view/ActionProcessButton;->drawLineProgress(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 104
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/cyjh/share/view/ActionProcessButton;->drawEndlessProgress(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Lcom/cyjh/share/view/ProcessButton;->onSizeChanged(IIII)V

    .line 115
    iget-object p1, p0, Lcom/cyjh/share/view/ActionProcessButton;->mProgressBar:Lcom/cyjh/share/view/ActionProcessButton$ProgressBar;

    if-eqz p1, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/cyjh/share/view/ActionProcessButton;->setupProgressBarBounds()V

    :cond_0
    return-void
.end method

.method public setColorScheme(IIII)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/cyjh/share/view/ActionProcessButton;->mColor1:I

    .line 91
    iput p2, p0, Lcom/cyjh/share/view/ActionProcessButton;->mColor2:I

    .line 92
    iput p3, p0, Lcom/cyjh/share/view/ActionProcessButton;->mColor3:I

    .line 93
    iput p4, p0, Lcom/cyjh/share/view/ActionProcessButton;->mColor4:I

    return-void
.end method

.method public setMode(Lcom/cyjh/share/view/ActionProcessButton$Mode;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/cyjh/share/view/ActionProcessButton;->mMode:Lcom/cyjh/share/view/ActionProcessButton$Mode;

    return-void
.end method

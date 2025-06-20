.class public Lcom/ds/daisi/floatview/DeleteFloatView;
.super Landroid/widget/LinearLayout;
.source "DeleteFloatView.java"


# instance fields
.field commonLog:Lcom/ds/daisi/log/CommonLog;

.field private mImageView:Landroid/widget/ImageView;

.field private mLinearLayoutDeleteFloatView:Landroid/widget/LinearLayout;

.field private mTextViewDelete:Landroid/widget/TextView;

.field private mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance p1, Lcom/ds/daisi/log/CommonLog;

    invoke-direct {p1}, Lcom/ds/daisi/log/CommonLog;-><init>()V

    iput-object p1, p0, Lcom/ds/daisi/floatview/DeleteFloatView;->commonLog:Lcom/ds/daisi/log/CommonLog;

    .line 30
    invoke-direct {p0}, Lcom/ds/daisi/floatview/DeleteFloatView;->initView()V

    .line 31
    invoke-direct {p0}, Lcom/ds/daisi/floatview/DeleteFloatView;->initWindowManagerParams()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 35
    invoke-virtual {p0}, Lcom/ds/daisi/floatview/DeleteFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04003b

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f1000ff

    .line 36
    invoke-virtual {p0, v0}, Lcom/ds/daisi/floatview/DeleteFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ds/daisi/floatview/DeleteFloatView;->mTextViewDelete:Landroid/widget/TextView;

    const v0, 0x7f1000fe

    .line 37
    invoke-virtual {p0, v0}, Lcom/ds/daisi/floatview/DeleteFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ds/daisi/floatview/DeleteFloatView;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f1000fd

    .line 38
    invoke-virtual {p0, v0}, Lcom/ds/daisi/floatview/DeleteFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ds/daisi/floatview/DeleteFloatView;->mLinearLayoutDeleteFloatView:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    .line 39
    invoke-virtual {p0, v0}, Lcom/ds/daisi/floatview/DeleteFloatView;->setVisibility(I)V

    return-void
.end method

.method private initWindowManagerParams()V
    .locals 3

    .line 44
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/ds/daisi/floatview/DeleteFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/ds/daisi/floatview/DeleteFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 55
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    .line 56
    iget-object v0, p0, Lcom/ds/daisi/floatview/DeleteFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/ds/daisi/floatview/DeleteFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/ds/daisi/floatview/DeleteFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 61
    iget-object v0, p0, Lcom/ds/daisi/floatview/DeleteFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 63
    iget-object v0, p0, Lcom/ds/daisi/floatview/DeleteFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 65
    iget-object v0, p0, Lcom/ds/daisi/floatview/DeleteFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/ds/daisi/floatview/DeleteFloatView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ds/daisi/util/AppDeviceUtils;->getResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/ds/daisi/floatview/DeleteFloatView;->mLinearLayoutDeleteFloatView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 66
    iget-object v0, p0, Lcom/ds/daisi/floatview/DeleteFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/ds/daisi/floatview/DeleteFloatView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ds/daisi/util/AppDeviceUtils;->getResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 68
    iget-object v0, p0, Lcom/ds/daisi/floatview/DeleteFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/ds/daisi/floatview/DeleteFloatView;->mLinearLayoutDeleteFloatView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 69
    iget-object v0, p0, Lcom/ds/daisi/floatview/DeleteFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/ds/daisi/floatview/DeleteFloatView;->mLinearLayoutDeleteFloatView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 71
    iget-object v0, p0, Lcom/ds/daisi/floatview/DeleteFloatView;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5c0f\u7cbe\u7075\u5bbd>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ds/daisi/floatview/DeleteFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/ds/daisi/floatview/DeleteFloatView;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5c0f\u7cbe\u7075\u9ad8>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ds/daisi/floatview/DeleteFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public geTextViewtWidth()I
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/ds/daisi/floatview/DeleteFloatView;->mLinearLayoutDeleteFloatView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return v0
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/ds/daisi/floatview/DeleteFloatView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/ds/daisi/floatview/DeleteFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public rotateScreen()V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/ds/daisi/floatview/DeleteFloatView;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mLinearLayoutDeleteFloatView.getLayoutParams().width>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ds/daisi/floatview/DeleteFloatView;->mLinearLayoutDeleteFloatView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    .line 99
    invoke-virtual {p0}, Lcom/ds/daisi/floatview/DeleteFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 100
    iget-object v1, p0, Lcom/ds/daisi/floatview/DeleteFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/ds/daisi/floatview/DeleteFloatView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ds/daisi/util/AppDeviceUtils;->getResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/ds/daisi/floatview/DeleteFloatView;->mLinearLayoutDeleteFloatView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 101
    iget-object v1, p0, Lcom/ds/daisi/floatview/DeleteFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/ds/daisi/floatview/DeleteFloatView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ds/daisi/util/AppDeviceUtils;->getResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 102
    iget-object v1, p0, Lcom/ds/daisi/floatview/DeleteFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setHide()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/ds/daisi/floatview/DeleteFloatView;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    iget-object v0, p0, Lcom/ds/daisi/floatview/DeleteFloatView;->mTextViewDelete:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ds/daisi/floatview/DeleteFloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setNormal()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/ds/daisi/floatview/DeleteFloatView;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f02008b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    iget-object v0, p0, Lcom/ds/daisi/floatview/DeleteFloatView;->mTextViewDelete:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ds/daisi/floatview/DeleteFloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

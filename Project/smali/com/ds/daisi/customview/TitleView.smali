.class public Lcom/ds/daisi/customview/TitleView;
.super Landroid/widget/RelativeLayout;
.source "TitleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/customview/TitleView$OnRightTextViewOnClickerListener;,
        Lcom/ds/daisi/customview/TitleView$onRightImageViewClickListener;,
        Lcom/ds/daisi/customview/TitleView$onLeftImageViewClickListener;,
        Lcom/ds/daisi/customview/TitleView$OnRightTextViewListener;,
        Lcom/ds/daisi/customview/TitleView$OnRightImageViewListener;,
        Lcom/ds/daisi/customview/TitleView$OnLeftImageViewListener;
    }
.end annotation


# instance fields
.field private imgLeft:Landroid/widget/ImageView;

.field private imgRight:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mRightTextView:Landroid/widget/TextView;

.field private onLeftImgeViewListener:Lcom/ds/daisi/customview/TitleView$OnLeftImageViewListener;

.field private onRightImageViewListener:Lcom/ds/daisi/customview/TitleView$OnRightImageViewListener;

.field private onRightTextViewListener:Lcom/ds/daisi/customview/TitleView$OnRightTextViewListener;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/ds/daisi/customview/TitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/ds/daisi/customview/TitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput-object p1, p0, Lcom/ds/daisi/customview/TitleView;->mContext:Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Lcom/ds/daisi/customview/TitleView;->initLayout()V

    .line 40
    invoke-direct {p0}, Lcom/ds/daisi/customview/TitleView;->initView()V

    return-void
.end method

.method static synthetic access$300(Lcom/ds/daisi/customview/TitleView;)Lcom/ds/daisi/customview/TitleView$OnLeftImageViewListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ds/daisi/customview/TitleView;->onLeftImgeViewListener:Lcom/ds/daisi/customview/TitleView$OnLeftImageViewListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ds/daisi/customview/TitleView;)Lcom/ds/daisi/customview/TitleView$OnRightImageViewListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ds/daisi/customview/TitleView;->onRightImageViewListener:Lcom/ds/daisi/customview/TitleView$OnRightImageViewListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ds/daisi/customview/TitleView;)Lcom/ds/daisi/customview/TitleView$OnRightTextViewListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ds/daisi/customview/TitleView;->onRightTextViewListener:Lcom/ds/daisi/customview/TitleView$OnRightTextViewListener;

    return-object p0
.end method

.method private initLayout()V
    .locals 3

    const/16 v0, 0x3c

    const/16 v1, 0x7a

    const/16 v2, 0xc5

    .line 46
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ds/daisi/customview/TitleView;->setBackgroundColor(I)V

    return-void
.end method

.method private initView()V
    .locals 12

    .line 51
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    .line 52
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ds/daisi/customview/TitleView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ds/daisi/customview/TitleView;->tvTitle:Landroid/widget/TextView;

    .line 54
    iget-object v2, p0, Lcom/ds/daisi/customview/TitleView;->tvTitle:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    iget-object v2, p0, Lcom/ds/daisi/customview/TitleView;->tvTitle:Landroid/widget/TextView;

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 56
    iget-object v2, p0, Lcom/ds/daisi/customview/TitleView;->tvTitle:Landroid/widget/TextView;

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 57
    iget-object v2, p0, Lcom/ds/daisi/customview/TitleView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 58
    iget-object v2, p0, Lcom/ds/daisi/customview/TitleView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v0}, Lcom/ds/daisi/customview/TitleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 62
    new-instance v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/ds/daisi/customview/TitleView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ds/daisi/customview/TitleView;->imgLeft:Landroid/widget/ImageView;

    const/16 v2, 0xf

    .line 63
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0x9

    .line 64
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v4, 0x0

    const/16 v5, 0x14

    const/16 v6, 0xa

    .line 65
    invoke-virtual {v0, v5, v6, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 66
    iget-object v7, p0, Lcom/ds/daisi/customview/TitleView;->imgLeft:Landroid/widget/ImageView;

    const v8, 0x7f0200d2

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    iget-object v7, p0, Lcom/ds/daisi/customview/TitleView;->imgLeft:Landroid/widget/ImageView;

    new-instance v9, Lcom/ds/daisi/customview/TitleView$onLeftImageViewClickListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/ds/daisi/customview/TitleView$onLeftImageViewClickListener;-><init>(Lcom/ds/daisi/customview/TitleView;Lcom/ds/daisi/customview/TitleView$1;)V

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v7, p0, Lcom/ds/daisi/customview/TitleView;->imgLeft:Landroid/widget/ImageView;

    invoke-virtual {p0, v7, v0}, Lcom/ds/daisi/customview/TitleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 72
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v7, 0xb

    .line 73
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 74
    invoke-virtual {v0, v4, v6, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 75
    new-instance v9, Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/ds/daisi/customview/TitleView;->mContext:Landroid/content/Context;

    invoke-direct {v9, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/ds/daisi/customview/TitleView;->imgRight:Landroid/widget/ImageView;

    .line 76
    iget-object v9, p0, Lcom/ds/daisi/customview/TitleView;->imgRight:Landroid/widget/ImageView;

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    iget-object v8, p0, Lcom/ds/daisi/customview/TitleView;->imgRight:Landroid/widget/ImageView;

    new-instance v9, Lcom/ds/daisi/customview/TitleView$onRightImageViewClickListener;

    invoke-direct {v9, p0, v10}, Lcom/ds/daisi/customview/TitleView$onRightImageViewClickListener;-><init>(Lcom/ds/daisi/customview/TitleView;Lcom/ds/daisi/customview/TitleView$1;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v8, p0, Lcom/ds/daisi/customview/TitleView;->imgRight:Landroid/widget/ImageView;

    invoke-virtual {p0, v8, v0}, Lcom/ds/daisi/customview/TitleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 82
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 83
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 84
    invoke-virtual {v0, v4, v6, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 85
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ds/daisi/customview/TitleView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ds/daisi/customview/TitleView;->mRightTextView:Landroid/widget/TextView;

    .line 86
    iget-object v1, p0, Lcom/ds/daisi/customview/TitleView;->mRightTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v1, p0, Lcom/ds/daisi/customview/TitleView;->mRightTextView:Landroid/widget/TextView;

    new-instance v2, Lcom/ds/daisi/customview/TitleView$OnRightTextViewOnClickerListener;

    invoke-direct {v2, p0, v10}, Lcom/ds/daisi/customview/TitleView$OnRightTextViewOnClickerListener;-><init>(Lcom/ds/daisi/customview/TitleView;Lcom/ds/daisi/customview/TitleView$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v1, p0, Lcom/ds/daisi/customview/TitleView;->mRightTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 89
    iget-object v1, p0, Lcom/ds/daisi/customview/TitleView;->mRightTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 90
    iget-object v1, p0, Lcom/ds/daisi/customview/TitleView;->mRightTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    iget-object v1, p0, Lcom/ds/daisi/customview/TitleView;->mRightTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/ds/daisi/customview/TitleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public setOnLeftImageViewListener(Lcom/ds/daisi/customview/TitleView$OnLeftImageViewListener;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/ds/daisi/customview/TitleView;->onLeftImgeViewListener:Lcom/ds/daisi/customview/TitleView$OnLeftImageViewListener;

    return-void
.end method

.method public setOnRightImageViewListener(Lcom/ds/daisi/customview/TitleView$OnRightImageViewListener;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/ds/daisi/customview/TitleView;->onRightImageViewListener:Lcom/ds/daisi/customview/TitleView$OnRightImageViewListener;

    return-void
.end method

.method public setOnRightTextViewListener(Lcom/ds/daisi/customview/TitleView$OnRightTextViewListener;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/ds/daisi/customview/TitleView;->onRightTextViewListener:Lcom/ds/daisi/customview/TitleView$OnRightTextViewListener;

    return-void
.end method

.method public setRightImage(I)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/ds/daisi/customview/TitleView;->imgRight:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setRightTvText(I)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/ds/daisi/customview/TitleView;->mRightTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setRightTvText(Ljava/lang/String;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/ds/daisi/customview/TitleView;->mRightTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleSize(I)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/ds/daisi/customview/TitleView;->tvTitle:Landroid/widget/TextView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public setTitleText(I)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/ds/daisi/customview/TitleView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/ds/daisi/customview/TitleView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setVisibilityLeftImage(I)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/ds/daisi/customview/TitleView;->imgLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setVisibilityRightImage(I)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/ds/daisi/customview/TitleView;->imgRight:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setVisibilityTvRight(I)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/ds/daisi/customview/TitleView;->mRightTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setleftImage(I)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/ds/daisi/customview/TitleView;->imgLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

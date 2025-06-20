.class public Lcom/cyjh/share/view/SlCustomInputLayout;
.super Landroid/widget/LinearLayout;
.source "SlCustomInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/share/view/SlCustomInputLayout$SavedState;,
        Lcom/cyjh/share/view/SlCustomInputLayout$MyKeyListener;,
        Lcom/cyjh/share/view/SlCustomInputLayout$ZanyInputConnection;,
        Lcom/cyjh/share/view/SlCustomInputLayout$ContentChangeListener;
    }
.end annotation


# instance fields
.field private ContentChangeListener:Lcom/cyjh/share/view/SlCustomInputLayout$ContentChangeListener;

.field private inputIndex:I

.field private mBoxLineSize:I

.field private mContext:Landroid/content/Context;

.field private mDrawType:I

.field private mInputColor:I

.field private mInterval:I

.field private mIsShowInputLine:Z

.field private mItemHeight:I

.field private mItemWidth:I

.field private mLineColor:I

.field private mNoinputColor:I

.field private mPassList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShowPassType:I

.field private mTxtInputColor:I

.field private mTxtSize:I

.field private maxLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/cyjh/share/view/SlCustomInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, v0}, Lcom/cyjh/share/view/SlCustomInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x6

    .line 33
    iput p3, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->maxLength:I

    const/4 p3, 0x0

    .line 35
    iput p3, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->inputIndex:I

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/cyjh/share/view/SlCustomInputLayout;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/cyjh/share/view/SlCustomInputLayout;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->inputIndex:I

    return p0
.end method

.method static synthetic access$100(Lcom/cyjh/share/view/SlCustomInputLayout;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mIsShowInputLine:Z

    return p0
.end method

.method static synthetic access$200(Lcom/cyjh/share/view/SlCustomInputLayout;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addChildVIews(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    .line 142
    :goto_0
    iget v1, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->maxLength:I

    if-ge v0, v1, :cond_1

    .line 143
    new-instance v1, Lcom/cyjh/share/view/PassWordView;

    invoke-direct {v1, p1}, Lcom/cyjh/share/view/PassWordView;-><init>(Landroid/content/Context;)V

    .line 144
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mItemWidth:I

    iget v4, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mItemHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-lez v0, :cond_0

    .line 146
    iget v3, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mInterval:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 149
    :cond_0
    iget v3, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mInputColor:I

    invoke-virtual {v1, v3}, Lcom/cyjh/share/view/PassWordView;->setInputStateColor(I)V

    .line 150
    iget v3, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mNoinputColor:I

    invoke-virtual {v1, v3}, Lcom/cyjh/share/view/PassWordView;->setNoinputColor(I)V

    .line 151
    iget v3, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mTxtInputColor:I

    invoke-virtual {v1, v3}, Lcom/cyjh/share/view/PassWordView;->setInputStateTextColor(I)V

    .line 152
    iget v3, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mLineColor:I

    invoke-virtual {v1, v3}, Lcom/cyjh/share/view/PassWordView;->setRemindLineColor(I)V

    .line 153
    iget v3, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mDrawType:I

    invoke-virtual {v1, v3}, Lcom/cyjh/share/view/PassWordView;->setmBoxDrawType(I)V

    .line 154
    iget v3, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mShowPassType:I

    invoke-virtual {v1, v3}, Lcom/cyjh/share/view/PassWordView;->setmShowPassType(I)V

    .line 155
    iget v3, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mTxtSize:I

    invoke-virtual {v1, v3}, Lcom/cyjh/share/view/PassWordView;->setmDrawTxtSize(I)V

    .line 156
    iget v3, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mBoxLineSize:I

    invoke-virtual {v1, v3}, Lcom/cyjh/share/view/PassWordView;->setmDrawBoxLineSize(I)V

    .line 157
    iget-boolean v3, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mIsShowInputLine:Z

    invoke-virtual {v1, v3}, Lcom/cyjh/share/view/PassWordView;->setmIsShowRemindLine(Z)V

    .line 159
    invoke-virtual {p0, v1, v2}, Lcom/cyjh/share/view/SlCustomInputLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 80
    iput-object p1, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mContext:Landroid/content/Context;

    .line 81
    sget-object v0, Lcom/cyjh/share/R$styleable;->PassWordLayoutStyle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 83
    sget p2, Lcom/cyjh/share/R$styleable;->PassWordLayoutStyle_box_input_color:I

    sget v0, Lcom/cyjh/share/R$color;->pass_view_rect_input:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mInputColor:I

    .line 84
    sget p2, Lcom/cyjh/share/R$styleable;->PassWordLayoutStyle_box_no_input_color:I

    sget v0, Lcom/cyjh/share/R$color;->regi_line_color:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mNoinputColor:I

    .line 85
    sget p2, Lcom/cyjh/share/R$styleable;->PassWordLayoutStyle_input_line_color:I

    sget v0, Lcom/cyjh/share/R$color;->pass_view_rect_input:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mLineColor:I

    .line 86
    sget p2, Lcom/cyjh/share/R$styleable;->PassWordLayoutStyle_text_input_color:I

    sget v0, Lcom/cyjh/share/R$color;->pass_view_rect_input:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mTxtInputColor:I

    .line 87
    sget p2, Lcom/cyjh/share/R$styleable;->PassWordLayoutStyle_box_draw_type:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mDrawType:I

    .line 88
    sget p2, Lcom/cyjh/share/R$styleable;->PassWordLayoutStyle_interval_width:I

    const/4 v1, 0x4

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mInterval:I

    .line 89
    sget p2, Lcom/cyjh/share/R$styleable;->PassWordLayoutStyle_pass_leng:I

    const/4 v2, 0x6

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->maxLength:I

    .line 90
    sget p2, Lcom/cyjh/share/R$styleable;->PassWordLayoutStyle_item_width:I

    const/16 v2, 0x28

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mItemWidth:I

    .line 91
    sget p2, Lcom/cyjh/share/R$styleable;->PassWordLayoutStyle_item_height:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mItemHeight:I

    .line 92
    sget p2, Lcom/cyjh/share/R$styleable;->PassWordLayoutStyle_pass_inputed_type:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mShowPassType:I

    .line 93
    sget p2, Lcom/cyjh/share/R$styleable;->PassWordLayoutStyle_draw_txt_size:I

    const/16 v2, 0x12

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mTxtSize:I

    .line 94
    sget p2, Lcom/cyjh/share/R$styleable;->PassWordLayoutStyle_draw_box_line_size:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mBoxLineSize:I

    .line 95
    sget p2, Lcom/cyjh/share/R$styleable;->PassWordLayoutStyle_is_show_input_line:I

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mIsShowInputLine:Z

    .line 96
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mPassList:Ljava/util/List;

    .line 100
    invoke-virtual {p0, v0}, Lcom/cyjh/share/view/SlCustomInputLayout;->setOrientation(I)V

    const/16 p1, 0x11

    .line 101
    invoke-virtual {p0, p1}, Lcom/cyjh/share/view/SlCustomInputLayout;->setGravity(I)V

    .line 104
    new-instance p1, Lcom/cyjh/share/view/SlCustomInputLayout$1;

    invoke-direct {p1, p0}, Lcom/cyjh/share/view/SlCustomInputLayout$1;-><init>(Lcom/cyjh/share/view/SlCustomInputLayout;)V

    invoke-virtual {p0, p1}, Lcom/cyjh/share/view/SlCustomInputLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    new-instance p1, Lcom/cyjh/share/view/SlCustomInputLayout$MyKeyListener;

    invoke-direct {p1, p0}, Lcom/cyjh/share/view/SlCustomInputLayout$MyKeyListener;-><init>(Lcom/cyjh/share/view/SlCustomInputLayout;)V

    invoke-virtual {p0, p1}, Lcom/cyjh/share/view/SlCustomInputLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 116
    new-instance p1, Lcom/cyjh/share/view/SlCustomInputLayout$2;

    invoke-direct {p1, p0}, Lcom/cyjh/share/view/SlCustomInputLayout$2;-><init>(Lcom/cyjh/share/view/SlCustomInputLayout;)V

    invoke-virtual {p0, p1}, Lcom/cyjh/share/view/SlCustomInputLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private setNextInput(Ljava/lang/String;)V
    .locals 2

    .line 264
    iget v0, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->inputIndex:I

    iget v1, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->maxLength:I

    if-ge v0, v1, :cond_0

    .line 265
    iget v0, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->inputIndex:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/cyjh/share/view/SlCustomInputLayout;->setNoInput(IZLjava/lang/String;)V

    .line 266
    iget v0, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->inputIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->inputIndex:I

    .line 267
    iget v0, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->inputIndex:I

    invoke-virtual {p0, v0}, Lcom/cyjh/share/view/SlCustomInputLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/share/view/PassWordView;

    if-eqz v0, :cond_0

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/share/view/PassWordView;->setmPassText(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Lcom/cyjh/share/view/PassWordView;->startInputState()V

    :cond_0
    return-void
.end method

.method private setPreviosInput()V
    .locals 3

    .line 280
    iget v0, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->inputIndex:I

    if-lez v0, :cond_0

    .line 281
    iget v0, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->inputIndex:I

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/cyjh/share/view/SlCustomInputLayout;->setNoInput(IZLjava/lang/String;)V

    .line 282
    iget v0, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->inputIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->inputIndex:I

    .line 283
    iget v0, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->inputIndex:I

    invoke-virtual {p0, v0}, Lcom/cyjh/share/view/SlCustomInputLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/share/view/PassWordView;

    if-eqz v0, :cond_1

    const-string v1, ""

    .line 285
    invoke-virtual {v0, v1}, Lcom/cyjh/share/view/PassWordView;->setmPassText(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0}, Lcom/cyjh/share/view/PassWordView;->startInputState()V

    goto :goto_0

    .line 288
    :cond_0
    iget v0, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->inputIndex:I

    if-nez v0, :cond_1

    .line 289
    iget v0, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->inputIndex:I

    invoke-virtual {p0, v0}, Lcom/cyjh/share/view/SlCustomInputLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/share/view/PassWordView;

    if-eqz v0, :cond_1

    const-string v1, ""

    .line 291
    invoke-virtual {v0, v1}, Lcom/cyjh/share/view/PassWordView;->setmPassText(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0}, Lcom/cyjh/share/view/PassWordView;->startInputState()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addContent(Ljava/lang/String;)V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mPassList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mPassList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->maxLength:I

    if-ge v0, v1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mPassList:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-direct {p0, p1}, Lcom/cyjh/share/view/SlCustomInputLayout;->setNextInput(Ljava/lang/String;)V

    .line 189
    :cond_0
    iget-object p1, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->ContentChangeListener:Lcom/cyjh/share/view/SlCustomInputLayout$ContentChangeListener;

    if-eqz p1, :cond_2

    .line 190
    iget-object p1, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mPassList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->maxLength:I

    if-ge p1, v0, :cond_1

    .line 191
    iget-object p1, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->ContentChangeListener:Lcom/cyjh/share/view/SlCustomInputLayout$ContentChangeListener;

    invoke-virtual {p0}, Lcom/cyjh/share/view/SlCustomInputLayout;->getPassString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/cyjh/share/view/SlCustomInputLayout$ContentChangeListener;->onChange(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_1
    iget-object p1, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->ContentChangeListener:Lcom/cyjh/share/view/SlCustomInputLayout$ContentChangeListener;

    invoke-virtual {p0}, Lcom/cyjh/share/view/SlCustomInputLayout;->getPassString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/cyjh/share/view/SlCustomInputLayout$ContentChangeListener;->onFinished(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getPassString()Ljava/lang/String;
    .locals 3

    .line 251
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 253
    iget-object v1, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mPassList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 254
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    const/4 v0, 0x2

    .line 327
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v0, 0x10000000

    .line 328
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 329
    new-instance p1, Lcom/cyjh/share/view/SlCustomInputLayout$ZanyInputConnection;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p0, v0}, Lcom/cyjh/share/view/SlCustomInputLayout$ZanyInputConnection;-><init>(Lcom/cyjh/share/view/SlCustomInputLayout;Landroid/view/View;Z)V

    return-object p1
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 165
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 167
    invoke-virtual {p0}, Lcom/cyjh/share/view/SlCustomInputLayout;->getChildCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 168
    iget p1, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->maxLength:I

    iget p2, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mItemWidth:I

    mul-int p1, p1, p2

    iget p2, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->maxLength:I

    add-int/lit8 p2, p2, -0x1

    iget v0, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mInterval:I

    mul-int p2, p2, v0

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/cyjh/share/view/SlCustomInputLayout;->getMeasuredWidth()I

    move-result p2

    if-le p1, p2, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/cyjh/share/view/SlCustomInputLayout;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->maxLength:I

    add-int/lit8 p2, p2, -0x1

    iget v0, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mInterval:I

    mul-int p2, p2, v0

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->maxLength:I

    div-int/2addr p1, p2

    iput p1, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mItemWidth:I

    .line 170
    iget p1, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mItemWidth:I

    iput p1, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mItemHeight:I

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/cyjh/share/view/SlCustomInputLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cyjh/share/view/SlCustomInputLayout;->addChildVIews(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .line 407
    instance-of v0, p1, Lcom/cyjh/share/view/SlCustomInputLayout$SavedState;

    if-nez v0, :cond_0

    .line 408
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 411
    :cond_0
    check-cast p1, Lcom/cyjh/share/view/SlCustomInputLayout$SavedState;

    .line 412
    invoke-virtual {p1}, Lcom/cyjh/share/view/SlCustomInputLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 413
    iget-object p1, p1, Lcom/cyjh/share/view/SlCustomInputLayout$SavedState;->saveString:Ljava/util/List;

    iput-object p1, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mPassList:Ljava/util/List;

    .line 414
    iget-object p1, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mPassList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->inputIndex:I

    .line 415
    iget-object p1, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mPassList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 418
    :goto_0
    invoke-virtual {p0}, Lcom/cyjh/share/view/SlCustomInputLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 419
    invoke-virtual {p0, v0}, Lcom/cyjh/share/view/SlCustomInputLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cyjh/share/view/PassWordView;

    .line 420
    iget-object v2, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mPassList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_2

    if-eqz v1, :cond_4

    .line 422
    invoke-virtual {v1, p1}, Lcom/cyjh/share/view/PassWordView;->setmIsShowRemindLine(Z)V

    .line 423
    invoke-virtual {v1, p1}, Lcom/cyjh/share/view/PassWordView;->updateInputState(Z)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 429
    iget-object v2, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mPassList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cyjh/share/view/PassWordView;->setmPassText(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v1, v3}, Lcom/cyjh/share/view/PassWordView;->updateInputState(Z)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 439
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 440
    new-instance v1, Lcom/cyjh/share/view/SlCustomInputLayout$SavedState;

    invoke-direct {v1, v0}, Lcom/cyjh/share/view/SlCustomInputLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 441
    iget-object v0, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mPassList:Ljava/util/List;

    iput-object v0, v1, Lcom/cyjh/share/view/SlCustomInputLayout$SavedState;->saveString:Ljava/util/List;

    return-object v1
.end method

.method public removeAllPwd()V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mPassList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 221
    iget-object v0, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mPassList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    if-lez v0, :cond_0

    const-string v2, ""

    .line 223
    invoke-virtual {p0, v0, v1, v2}, Lcom/cyjh/share/view/SlCustomInputLayout;->setNoInput(IZLjava/lang/String;)V

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    .line 225
    invoke-virtual {p0, v0}, Lcom/cyjh/share/view/SlCustomInputLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cyjh/share/view/PassWordView;

    if-eqz v1, :cond_1

    const-string v2, ""

    .line 227
    invoke-virtual {v1, v2}, Lcom/cyjh/share/view/PassWordView;->setmPassText(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v1}, Lcom/cyjh/share/view/PassWordView;->startInputState()V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mPassList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 235
    iput v1, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->inputIndex:I

    .line 239
    :cond_3
    iget-object v0, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->ContentChangeListener:Lcom/cyjh/share/view/SlCustomInputLayout$ContentChangeListener;

    if-eqz v0, :cond_4

    .line 240
    iget-object v0, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->ContentChangeListener:Lcom/cyjh/share/view/SlCustomInputLayout$ContentChangeListener;

    invoke-interface {v0}, Lcom/cyjh/share/view/SlCustomInputLayout$ContentChangeListener;->onNull()V

    :cond_4
    return-void
.end method

.method public removePwd()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mPassList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mPassList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mPassList:Ljava/util/List;

    iget-object v1, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mPassList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 204
    invoke-direct {p0}, Lcom/cyjh/share/view/SlCustomInputLayout;->setPreviosInput()V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->ContentChangeListener:Lcom/cyjh/share/view/SlCustomInputLayout$ContentChangeListener;

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->mPassList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->ContentChangeListener:Lcom/cyjh/share/view/SlCustomInputLayout$ContentChangeListener;

    invoke-virtual {p0}, Lcom/cyjh/share/view/SlCustomInputLayout;->getPassString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cyjh/share/view/SlCustomInputLayout$ContentChangeListener;->onChange(Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->ContentChangeListener:Lcom/cyjh/share/view/SlCustomInputLayout$ContentChangeListener;

    invoke-interface {v0}, Lcom/cyjh/share/view/SlCustomInputLayout$ContentChangeListener;->onNull()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setNoInput(IZLjava/lang/String;)V
    .locals 0

    if-gez p1, :cond_0

    return-void

    .line 307
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cyjh/share/view/SlCustomInputLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/cyjh/share/view/PassWordView;

    if-eqz p1, :cond_1

    .line 309
    invoke-virtual {p1, p3}, Lcom/cyjh/share/view/PassWordView;->setmPassText(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p1, p2}, Lcom/cyjh/share/view/PassWordView;->updateInputState(Z)V

    :cond_1
    return-void
.end method

.method public setPwdChangeListener(Lcom/cyjh/share/view/SlCustomInputLayout$ContentChangeListener;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/cyjh/share/view/SlCustomInputLayout;->ContentChangeListener:Lcom/cyjh/share/view/SlCustomInputLayout$ContentChangeListener;

    return-void
.end method

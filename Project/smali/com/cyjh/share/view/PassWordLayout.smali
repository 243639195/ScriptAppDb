.class public Lcom/cyjh/share/view/PassWordLayout;
.super Landroid/widget/LinearLayout;
.source "PassWordLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/share/view/PassWordLayout$SavedState;,
        Lcom/cyjh/share/view/PassWordLayout$MyKeyListener;,
        Lcom/cyjh/share/view/PassWordLayout$ZanyInputConnection;,
        Lcom/cyjh/share/view/PassWordLayout$pwdChangeListener;
    }
.end annotation


# instance fields
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

.field private pwdChangeListener:Lcom/cyjh/share/view/PassWordLayout$pwdChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/cyjh/share/view/PassWordLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, v0}, Lcom/cyjh/share/view/PassWordLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x6

    .line 32
    iput p3, p0, Lcom/cyjh/share/view/PassWordLayout;->maxLength:I

    const/4 p3, 0x0

    .line 34
    iput p3, p0, Lcom/cyjh/share/view/PassWordLayout;->inputIndex:I

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/cyjh/share/view/PassWordLayout;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/cyjh/share/view/PassWordLayout;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/cyjh/share/view/PassWordLayout;->inputIndex:I

    return p0
.end method

.method static synthetic access$100(Lcom/cyjh/share/view/PassWordLayout;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/cyjh/share/view/PassWordLayout;->mIsShowInputLine:Z

    return p0
.end method

.method static synthetic access$200(Lcom/cyjh/share/view/PassWordLayout;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/cyjh/share/view/PassWordLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addChildVIews(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    .line 141
    :goto_0
    iget v1, p0, Lcom/cyjh/share/view/PassWordLayout;->maxLength:I

    if-ge v0, v1, :cond_1

    .line 142
    new-instance v1, Lcom/cyjh/share/view/PassWordView;

    invoke-direct {v1, p1}, Lcom/cyjh/share/view/PassWordView;-><init>(Landroid/content/Context;)V

    .line 143
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/cyjh/share/view/PassWordLayout;->mItemWidth:I

    iget v4, p0, Lcom/cyjh/share/view/PassWordLayout;->mItemHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-lez v0, :cond_0

    .line 145
    iget v3, p0, Lcom/cyjh/share/view/PassWordLayout;->mInterval:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 148
    :cond_0
    iget v3, p0, Lcom/cyjh/share/view/PassWordLayout;->mInputColor:I

    invoke-virtual {v1, v3}, Lcom/cyjh/share/view/PassWordView;->setInputStateColor(I)V

    .line 149
    iget v3, p0, Lcom/cyjh/share/view/PassWordLayout;->mNoinputColor:I

    invoke-virtual {v1, v3}, Lcom/cyjh/share/view/PassWordView;->setNoinputColor(I)V

    .line 150
    iget v3, p0, Lcom/cyjh/share/view/PassWordLayout;->mTxtInputColor:I

    invoke-virtual {v1, v3}, Lcom/cyjh/share/view/PassWordView;->setInputStateTextColor(I)V

    .line 151
    iget v3, p0, Lcom/cyjh/share/view/PassWordLayout;->mLineColor:I

    invoke-virtual {v1, v3}, Lcom/cyjh/share/view/PassWordView;->setRemindLineColor(I)V

    .line 152
    iget v3, p0, Lcom/cyjh/share/view/PassWordLayout;->mDrawType:I

    invoke-virtual {v1, v3}, Lcom/cyjh/share/view/PassWordView;->setmBoxDrawType(I)V

    .line 153
    iget v3, p0, Lcom/cyjh/share/view/PassWordLayout;->mShowPassType:I

    invoke-virtual {v1, v3}, Lcom/cyjh/share/view/PassWordView;->setmShowPassType(I)V

    .line 154
    iget v3, p0, Lcom/cyjh/share/view/PassWordLayout;->mTxtSize:I

    invoke-virtual {v1, v3}, Lcom/cyjh/share/view/PassWordView;->setmDrawTxtSize(I)V

    .line 155
    iget v3, p0, Lcom/cyjh/share/view/PassWordLayout;->mBoxLineSize:I

    invoke-virtual {v1, v3}, Lcom/cyjh/share/view/PassWordView;->setmDrawBoxLineSize(I)V

    .line 156
    iget-boolean v3, p0, Lcom/cyjh/share/view/PassWordLayout;->mIsShowInputLine:Z

    invoke-virtual {v1, v3}, Lcom/cyjh/share/view/PassWordView;->setmIsShowRemindLine(Z)V

    .line 158
    invoke-virtual {p0, v1, v2}, Lcom/cyjh/share/view/PassWordLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 79
    iput-object p1, p0, Lcom/cyjh/share/view/PassWordLayout;->mContext:Landroid/content/Context;

    .line 80
    sget-object v0, Lcom/cyjh/share/R$styleable;->PassWordLayoutStyle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 82
    sget p2, Lcom/cyjh/share/R$styleable;->PassWordLayoutStyle_box_input_color:I

    sget v0, Lcom/cyjh/share/R$color;->pass_view_rect_input:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/share/view/PassWordLayout;->mInputColor:I

    .line 83
    sget p2, Lcom/cyjh/share/R$styleable;->PassWordLayoutStyle_box_no_input_color:I

    sget v0, Lcom/cyjh/share/R$color;->regi_line_color:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/share/view/PassWordLayout;->mNoinputColor:I

    .line 84
    sget p2, Lcom/cyjh/share/R$styleable;->PassWordLayoutStyle_input_line_color:I

    sget v0, Lcom/cyjh/share/R$color;->pass_view_rect_input:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/share/view/PassWordLayout;->mLineColor:I

    .line 85
    sget p2, Lcom/cyjh/share/R$styleable;->PassWordLayoutStyle_text_input_color:I

    sget v0, Lcom/cyjh/share/R$color;->pass_view_rect_input:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/share/view/PassWordLayout;->mTxtInputColor:I

    .line 86
    sget p2, Lcom/cyjh/share/R$styleable;->PassWordLayoutStyle_box_draw_type:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/share/view/PassWordLayout;->mDrawType:I

    .line 87
    sget p2, Lcom/cyjh/share/R$styleable;->PassWordLayoutStyle_interval_width:I

    const/4 v1, 0x4

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/share/view/PassWordLayout;->mInterval:I

    .line 88
    sget p2, Lcom/cyjh/share/R$styleable;->PassWordLayoutStyle_pass_leng:I

    const/4 v2, 0x6

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/share/view/PassWordLayout;->maxLength:I

    .line 89
    sget p2, Lcom/cyjh/share/R$styleable;->PassWordLayoutStyle_item_width:I

    const/16 v2, 0x28

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/share/view/PassWordLayout;->mItemWidth:I

    .line 90
    sget p2, Lcom/cyjh/share/R$styleable;->PassWordLayoutStyle_item_height:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/share/view/PassWordLayout;->mItemHeight:I

    .line 91
    sget p2, Lcom/cyjh/share/R$styleable;->PassWordLayoutStyle_pass_inputed_type:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/share/view/PassWordLayout;->mShowPassType:I

    .line 92
    sget p2, Lcom/cyjh/share/R$styleable;->PassWordLayoutStyle_draw_txt_size:I

    const/16 v2, 0x12

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/share/view/PassWordLayout;->mTxtSize:I

    .line 93
    sget p2, Lcom/cyjh/share/R$styleable;->PassWordLayoutStyle_draw_box_line_size:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/share/view/PassWordLayout;->mBoxLineSize:I

    .line 94
    sget p2, Lcom/cyjh/share/R$styleable;->PassWordLayoutStyle_is_show_input_line:I

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/cyjh/share/view/PassWordLayout;->mIsShowInputLine:Z

    .line 95
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cyjh/share/view/PassWordLayout;->mPassList:Ljava/util/List;

    .line 99
    invoke-virtual {p0, v0}, Lcom/cyjh/share/view/PassWordLayout;->setOrientation(I)V

    const/16 p1, 0x11

    .line 100
    invoke-virtual {p0, p1}, Lcom/cyjh/share/view/PassWordLayout;->setGravity(I)V

    .line 103
    new-instance p1, Lcom/cyjh/share/view/PassWordLayout$1;

    invoke-direct {p1, p0}, Lcom/cyjh/share/view/PassWordLayout$1;-><init>(Lcom/cyjh/share/view/PassWordLayout;)V

    invoke-virtual {p0, p1}, Lcom/cyjh/share/view/PassWordLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    new-instance p1, Lcom/cyjh/share/view/PassWordLayout$MyKeyListener;

    invoke-direct {p1, p0}, Lcom/cyjh/share/view/PassWordLayout$MyKeyListener;-><init>(Lcom/cyjh/share/view/PassWordLayout;)V

    invoke-virtual {p0, p1}, Lcom/cyjh/share/view/PassWordLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 115
    new-instance p1, Lcom/cyjh/share/view/PassWordLayout$2;

    invoke-direct {p1, p0}, Lcom/cyjh/share/view/PassWordLayout$2;-><init>(Lcom/cyjh/share/view/PassWordLayout;)V

    invoke-virtual {p0, p1}, Lcom/cyjh/share/view/PassWordLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private setNextInput(Ljava/lang/String;)V
    .locals 2

    .line 263
    iget v0, p0, Lcom/cyjh/share/view/PassWordLayout;->inputIndex:I

    iget v1, p0, Lcom/cyjh/share/view/PassWordLayout;->maxLength:I

    if-ge v0, v1, :cond_0

    .line 264
    iget v0, p0, Lcom/cyjh/share/view/PassWordLayout;->inputIndex:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/cyjh/share/view/PassWordLayout;->setNoInput(IZLjava/lang/String;)V

    .line 265
    iget v0, p0, Lcom/cyjh/share/view/PassWordLayout;->inputIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/share/view/PassWordLayout;->inputIndex:I

    .line 266
    iget v0, p0, Lcom/cyjh/share/view/PassWordLayout;->inputIndex:I

    invoke-virtual {p0, v0}, Lcom/cyjh/share/view/PassWordLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/share/view/PassWordView;

    if-eqz v0, :cond_0

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/share/view/PassWordView;->setmPassText(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0}, Lcom/cyjh/share/view/PassWordView;->startInputState()V

    :cond_0
    return-void
.end method

.method private setPreviosInput()V
    .locals 3

    .line 279
    iget v0, p0, Lcom/cyjh/share/view/PassWordLayout;->inputIndex:I

    if-lez v0, :cond_0

    .line 280
    iget v0, p0, Lcom/cyjh/share/view/PassWordLayout;->inputIndex:I

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/cyjh/share/view/PassWordLayout;->setNoInput(IZLjava/lang/String;)V

    .line 281
    iget v0, p0, Lcom/cyjh/share/view/PassWordLayout;->inputIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/cyjh/share/view/PassWordLayout;->inputIndex:I

    .line 282
    iget v0, p0, Lcom/cyjh/share/view/PassWordLayout;->inputIndex:I

    invoke-virtual {p0, v0}, Lcom/cyjh/share/view/PassWordLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/share/view/PassWordView;

    if-eqz v0, :cond_1

    const-string v1, ""

    .line 284
    invoke-virtual {v0, v1}, Lcom/cyjh/share/view/PassWordView;->setmPassText(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0}, Lcom/cyjh/share/view/PassWordView;->startInputState()V

    goto :goto_0

    .line 287
    :cond_0
    iget v0, p0, Lcom/cyjh/share/view/PassWordLayout;->inputIndex:I

    if-nez v0, :cond_1

    .line 288
    iget v0, p0, Lcom/cyjh/share/view/PassWordLayout;->inputIndex:I

    invoke-virtual {p0, v0}, Lcom/cyjh/share/view/PassWordLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/share/view/PassWordView;

    if-eqz v0, :cond_1

    const-string v1, ""

    .line 290
    invoke-virtual {v0, v1}, Lcom/cyjh/share/view/PassWordView;->setmPassText(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0}, Lcom/cyjh/share/view/PassWordView;->startInputState()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addPwd(Ljava/lang/String;)V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordLayout;->mPassList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cyjh/share/view/PassWordLayout;->mPassList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/cyjh/share/view/PassWordLayout;->maxLength:I

    if-ge v0, v1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordLayout;->mPassList:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-direct {p0, p1}, Lcom/cyjh/share/view/PassWordLayout;->setNextInput(Ljava/lang/String;)V

    .line 188
    :cond_0
    iget-object p1, p0, Lcom/cyjh/share/view/PassWordLayout;->pwdChangeListener:Lcom/cyjh/share/view/PassWordLayout$pwdChangeListener;

    if-eqz p1, :cond_2

    .line 189
    iget-object p1, p0, Lcom/cyjh/share/view/PassWordLayout;->mPassList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/cyjh/share/view/PassWordLayout;->maxLength:I

    if-ge p1, v0, :cond_1

    .line 190
    iget-object p1, p0, Lcom/cyjh/share/view/PassWordLayout;->pwdChangeListener:Lcom/cyjh/share/view/PassWordLayout$pwdChangeListener;

    invoke-virtual {p0}, Lcom/cyjh/share/view/PassWordLayout;->getPassString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/cyjh/share/view/PassWordLayout$pwdChangeListener;->onChange(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_1
    iget-object p1, p0, Lcom/cyjh/share/view/PassWordLayout;->pwdChangeListener:Lcom/cyjh/share/view/PassWordLayout$pwdChangeListener;

    invoke-virtual {p0}, Lcom/cyjh/share/view/PassWordLayout;->getPassString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/cyjh/share/view/PassWordLayout$pwdChangeListener;->onFinished(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getPassString()Ljava/lang/String;
    .locals 3

    .line 250
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 252
    iget-object v1, p0, Lcom/cyjh/share/view/PassWordLayout;->mPassList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 253
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    const/4 v0, 0x2

    .line 325
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v0, 0x10000000

    .line 326
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 327
    new-instance p1, Lcom/cyjh/share/view/PassWordLayout$ZanyInputConnection;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p0, v0}, Lcom/cyjh/share/view/PassWordLayout$ZanyInputConnection;-><init>(Lcom/cyjh/share/view/PassWordLayout;Landroid/view/View;Z)V

    return-object p1
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 164
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 166
    invoke-virtual {p0}, Lcom/cyjh/share/view/PassWordLayout;->getChildCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 167
    iget p1, p0, Lcom/cyjh/share/view/PassWordLayout;->maxLength:I

    iget p2, p0, Lcom/cyjh/share/view/PassWordLayout;->mItemWidth:I

    mul-int p1, p1, p2

    iget p2, p0, Lcom/cyjh/share/view/PassWordLayout;->maxLength:I

    add-int/lit8 p2, p2, -0x1

    iget v0, p0, Lcom/cyjh/share/view/PassWordLayout;->mInterval:I

    mul-int p2, p2, v0

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/cyjh/share/view/PassWordLayout;->getMeasuredWidth()I

    move-result p2

    if-le p1, p2, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/cyjh/share/view/PassWordLayout;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/cyjh/share/view/PassWordLayout;->maxLength:I

    add-int/lit8 p2, p2, -0x1

    iget v0, p0, Lcom/cyjh/share/view/PassWordLayout;->mInterval:I

    mul-int p2, p2, v0

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/cyjh/share/view/PassWordLayout;->maxLength:I

    div-int/2addr p1, p2

    iput p1, p0, Lcom/cyjh/share/view/PassWordLayout;->mItemWidth:I

    .line 169
    iget p1, p0, Lcom/cyjh/share/view/PassWordLayout;->mItemWidth:I

    iput p1, p0, Lcom/cyjh/share/view/PassWordLayout;->mItemHeight:I

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/cyjh/share/view/PassWordLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cyjh/share/view/PassWordLayout;->addChildVIews(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .line 391
    instance-of v0, p1, Lcom/cyjh/share/view/PassWordLayout$SavedState;

    if-nez v0, :cond_0

    .line 392
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 395
    :cond_0
    check-cast p1, Lcom/cyjh/share/view/PassWordLayout$SavedState;

    .line 396
    invoke-virtual {p1}, Lcom/cyjh/share/view/PassWordLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 397
    iget-object p1, p1, Lcom/cyjh/share/view/PassWordLayout$SavedState;->saveString:Ljava/util/List;

    iput-object p1, p0, Lcom/cyjh/share/view/PassWordLayout;->mPassList:Ljava/util/List;

    .line 398
    iget-object p1, p0, Lcom/cyjh/share/view/PassWordLayout;->mPassList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/cyjh/share/view/PassWordLayout;->inputIndex:I

    .line 399
    iget-object p1, p0, Lcom/cyjh/share/view/PassWordLayout;->mPassList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 402
    :goto_0
    invoke-virtual {p0}, Lcom/cyjh/share/view/PassWordLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 403
    invoke-virtual {p0, v0}, Lcom/cyjh/share/view/PassWordLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cyjh/share/view/PassWordView;

    .line 404
    iget-object v2, p0, Lcom/cyjh/share/view/PassWordLayout;->mPassList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_2

    if-eqz v1, :cond_4

    .line 406
    invoke-virtual {v1, p1}, Lcom/cyjh/share/view/PassWordView;->setmIsShowRemindLine(Z)V

    .line 407
    invoke-virtual {v1, p1}, Lcom/cyjh/share/view/PassWordView;->updateInputState(Z)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 413
    iget-object v2, p0, Lcom/cyjh/share/view/PassWordLayout;->mPassList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cyjh/share/view/PassWordView;->setmPassText(Ljava/lang/String;)V

    .line 414
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

    .line 423
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 424
    new-instance v1, Lcom/cyjh/share/view/PassWordLayout$SavedState;

    invoke-direct {v1, v0}, Lcom/cyjh/share/view/PassWordLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 425
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordLayout;->mPassList:Ljava/util/List;

    iput-object v0, v1, Lcom/cyjh/share/view/PassWordLayout$SavedState;->saveString:Ljava/util/List;

    return-object v1
.end method

.method public removeAllPwd()V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordLayout;->mPassList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 220
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordLayout;->mPassList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    if-lez v0, :cond_0

    const-string v2, ""

    .line 222
    invoke-virtual {p0, v0, v1, v2}, Lcom/cyjh/share/view/PassWordLayout;->setNoInput(IZLjava/lang/String;)V

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    .line 224
    invoke-virtual {p0, v0}, Lcom/cyjh/share/view/PassWordLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cyjh/share/view/PassWordView;

    if-eqz v1, :cond_1

    const-string v2, ""

    .line 226
    invoke-virtual {v1, v2}, Lcom/cyjh/share/view/PassWordView;->setmPassText(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v1}, Lcom/cyjh/share/view/PassWordView;->startInputState()V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordLayout;->mPassList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 234
    iput v1, p0, Lcom/cyjh/share/view/PassWordLayout;->inputIndex:I

    .line 238
    :cond_3
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordLayout;->pwdChangeListener:Lcom/cyjh/share/view/PassWordLayout$pwdChangeListener;

    if-eqz v0, :cond_4

    .line 239
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordLayout;->pwdChangeListener:Lcom/cyjh/share/view/PassWordLayout$pwdChangeListener;

    invoke-interface {v0}, Lcom/cyjh/share/view/PassWordLayout$pwdChangeListener;->onNull()V

    :cond_4
    return-void
.end method

.method public removePwd()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordLayout;->mPassList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cyjh/share/view/PassWordLayout;->mPassList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordLayout;->mPassList:Ljava/util/List;

    iget-object v1, p0, Lcom/cyjh/share/view/PassWordLayout;->mPassList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 203
    invoke-direct {p0}, Lcom/cyjh/share/view/PassWordLayout;->setPreviosInput()V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordLayout;->pwdChangeListener:Lcom/cyjh/share/view/PassWordLayout$pwdChangeListener;

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordLayout;->mPassList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordLayout;->pwdChangeListener:Lcom/cyjh/share/view/PassWordLayout$pwdChangeListener;

    invoke-virtual {p0}, Lcom/cyjh/share/view/PassWordLayout;->getPassString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cyjh/share/view/PassWordLayout$pwdChangeListener;->onChange(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordLayout;->pwdChangeListener:Lcom/cyjh/share/view/PassWordLayout$pwdChangeListener;

    invoke-interface {v0}, Lcom/cyjh/share/view/PassWordLayout$pwdChangeListener;->onNull()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setNoInput(IZLjava/lang/String;)V
    .locals 0

    if-gez p1, :cond_0

    return-void

    .line 306
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cyjh/share/view/PassWordLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/cyjh/share/view/PassWordView;

    if-eqz p1, :cond_1

    .line 308
    invoke-virtual {p1, p3}, Lcom/cyjh/share/view/PassWordView;->setmPassText(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p1, p2}, Lcom/cyjh/share/view/PassWordView;->updateInputState(Z)V

    :cond_1
    return-void
.end method

.method public setPwdChangeListener(Lcom/cyjh/share/view/PassWordLayout$pwdChangeListener;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/cyjh/share/view/PassWordLayout;->pwdChangeListener:Lcom/cyjh/share/view/PassWordLayout$pwdChangeListener;

    return-void
.end method

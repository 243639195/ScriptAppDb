.class public final Lcom/cyjh/mobileanjian/ipc/uip/c;
.super Landroid/widget/LinearLayout;
.source "HSettingLayout.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# static fields
.field static final a:[I

.field private static final h:I = 0x20


# instance fields
.field b:Landroid/widget/RadioGroup;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ScrollView;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field e:Landroid/widget/LinearLayout;

.field f:Landroid/widget/ScrollView;

.field g:I

.field private i:Landroid/widget/FrameLayout;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    .line 31
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/uip/c;->a:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/uip/c;-><init>(Landroid/content/Context;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 0

    const/4 p2, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/uip/c;-><init>(Landroid/content/Context;C)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;C)V
    .locals 7

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->g:I

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->d:I

    .line 56
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/uip/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    invoke-virtual {p0, p2}, Lcom/cyjh/mobileanjian/ipc/uip/c;->setOrientation(I)V

    .line 59
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v3, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v3, p2, v2}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x40f00000    # 7.5f

    .line 61
    iput v4, v3, Landroid/widget/TableLayout$LayoutParams;->weight:F

    .line 62
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x10

    .line 63
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 66
    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance v4, Landroid/widget/RadioGroup;

    invoke-direct {v4, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->b:Landroid/widget/RadioGroup;

    .line 72
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->b:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v1}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 73
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->b:Landroid/widget/RadioGroup;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->d:I

    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->d:I

    neg-int v6, v6

    invoke-virtual {v4, v5, p2, p2, v6}, Landroid/widget/RadioGroup;->setPadding(IIII)V

    .line 74
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->b:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 75
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/uip/c;->addView(Landroid/view/View;)V

    .line 79
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 80
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v1, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, -0x1000000

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/uip/c;->addView(Landroid/view/View;)V

    .line 84
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->i:Landroid/widget/FrameLayout;

    .line 85
    new-instance p1, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {p1, p2, v2}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    const/high16 v0, 0x40200000    # 2.5f

    .line 86
    iput v0, p1, Landroid/widget/TableLayout$LayoutParams;->weight:F

    .line 87
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->i:Landroid/widget/FrameLayout;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->d:I

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->d:I

    invoke-virtual {p1, v0, p2, v1, p2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 89
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->i:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/c;->addView(Landroid/view/View;)V

    .line 91
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0x20

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->c:Ljava/util/List;

    .line 93
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->b:Landroid/widget/RadioGroup;

    invoke-virtual {p1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->f:Landroid/widget/ScrollView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->g:I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 102
    new-instance v0, Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/uip/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 103
    sget-object v1, Lcom/cyjh/mobileanjian/ipc/uip/c;->a:[I

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->g:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setId(I)V

    .line 107
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->d:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/RadioButton;->setPadding(IIII)V

    .line 109
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/uip/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cyjh/mqsdk/R$color;->selector_tab:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 111
    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setLines(I)V

    .line 113
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 114
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->b:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 116
    new-instance v0, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/uip/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->f:Landroid/widget/ScrollView;

    .line 122
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->f:Landroid/widget/ScrollView;

    const/high16 v2, 0x20000

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 123
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->f:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 124
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->f:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFocusableInTouchMode(Z)V

    .line 125
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->f:Landroid/widget/ScrollView;

    new-instance v2, Lcom/cyjh/mobileanjian/ipc/uip/c$1;

    invoke-direct {v2, p0}, Lcom/cyjh/mobileanjian/ipc/uip/c$1;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/c;)V

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 133
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->f:Landroid/widget/ScrollView;

    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->setTag(Ljava/lang/Object;)V

    .line 134
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->f:Landroid/widget/ScrollView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1150
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/uip/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1151
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1152
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1153
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->e:Landroid/widget/LinearLayout;

    .line 136
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->f:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private b()Landroid/widget/LinearLayout;
    .locals 3

    .line 150
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/uip/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 151
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 152
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 153
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/ScrollView;",
            ">;)V"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->c:Ljava/util/List;

    .line 160
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 161
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    .line 162
    new-instance v4, Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/uip/c;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 163
    sget-object v5, Lcom/cyjh/mobileanjian/ipc/uip/c;->a:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setId(I)V

    .line 164
    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->d:I

    invoke-virtual {v4, v1, v1, v1, v5}, Landroid/widget/RadioButton;->setPadding(IIII)V

    .line 166
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/uip/c;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/cyjh/mqsdk/R$color;->selector_tab:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 168
    invoke-virtual {v3}, Landroid/widget/ScrollView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    .line 169
    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setLines(I)V

    .line 170
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 171
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->b:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getCurrentItem()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->j:I

    return v0
.end method

.method public final getScrollViewList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/widget/ScrollView;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->c:Ljava/util/List;

    return-object v0
.end method

.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 199
    invoke-virtual {p0, p2}, Lcom/cyjh/mobileanjian/ipc/uip/c;->setSelectTab(I)V

    return-void
.end method

.method public final setSelectTab(I)V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    const/16 v0, 0x20

    if-lt p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x0

    .line 190
    :cond_2
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->j:I

    .line 192
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->b:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->check(I)V

    .line 193
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 194
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->i:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/c;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

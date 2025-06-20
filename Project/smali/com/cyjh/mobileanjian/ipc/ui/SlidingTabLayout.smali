.class public Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SlidingTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$b;,
        Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$a;,
        Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$c;
    }
.end annotation


# static fields
.field private static final b:I = 0x18

.field private static final c:I = 0x4

.field private static final d:I = 0xc


# instance fields
.field a:Landroid/support/v4/view/ViewPager;

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private final k:Lcom/cyjh/mobileanjian/ipc/ui/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->i:Landroid/util/SparseArray;

    const/4 p2, 0x0

    .line 93
    invoke-virtual {p0, p2}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setHorizontalScrollBarEnabled(Z)V

    const/4 p2, 0x1

    .line 95
    invoke-virtual {p0, p2}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setFillViewport(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x41c00000    # 24.0f

    mul-float p2, p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->e:I

    .line 99
    new-instance p2, Lcom/cyjh/mobileanjian/ipc/ui/d;

    invoke-direct {p2, p1}, Lcom/cyjh/mobileanjian/ipc/ui/d;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->k:Lcom/cyjh/mobileanjian/ipc/ui/d;

    .line 100
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->k:Lcom/cyjh/mobileanjian/ipc/ui/d;

    const/4 p2, -0x1

    const/4 p3, -0x2

    invoke-virtual {p0, p1, p2, p3}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 4

    .line 185
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x11

    .line 186
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x2

    const/high16 v1, 0x41400000    # 12.0f

    .line 187
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 189
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 193
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x101030e

    invoke-virtual {v1, v3, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 195
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 196
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 198
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 199
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 200
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-object v0
.end method

.method static synthetic a(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Lcom/cyjh/mobileanjian/ipc/ui/d;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->k:Lcom/cyjh/mobileanjian/ipc/ui/d;

    return-object p0
.end method

.method private a()V
    .locals 12

    .line 205
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 206
    new-instance v1, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$b;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;B)V

    const/4 v3, 0x0

    .line 208
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 212
    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->f:I

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->f:I

    iget-object v7, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->k:Lcom/cyjh/mobileanjian/ipc/ui/d;

    invoke-virtual {v4, v6, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 216
    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->g:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    goto :goto_1

    :cond_0
    move-object v4, v5

    move-object v6, v4

    :goto_1
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-nez v4, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 3185
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x11

    .line 3186
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v4, 0x41400000    # 12.0f

    .line 3187
    invoke-virtual {v9, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3189
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v4, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3192
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 3193
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    const v11, 0x101030e

    invoke-virtual {v10, v11, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3195
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3196
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setAllCaps(Z)V

    const/high16 v4, 0x40800000    # 4.0f

    .line 3198
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    mul-float v10, v10, v4

    float-to-int v4, v10

    .line 3199
    invoke-virtual {v9, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3200
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    move-object v4, v9

    :cond_1
    if-nez v6, :cond_2

    .line 223
    const-class v9, Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 224
    move-object v6, v4

    check-cast v6, Landroid/widget/TextView;

    .line 227
    :cond_2
    iget-boolean v9, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->h:Z

    if-eqz v9, :cond_3

    .line 228
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 229
    iput v2, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v10, 0x3f800000    # 1.0f

    .line 230
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 233
    :cond_3
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/cyjh/mqsdk/R$color;->selector_tab:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/high16 v9, 0x41600000    # 14.0f

    .line 234
    invoke-virtual {v6, v7, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 235
    invoke-virtual {v0, v3}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 237
    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->i:Landroid/util/SparseArray;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 240
    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 243
    :cond_4
    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->k:Lcom/cyjh/mobileanjian/ipc/ui/d;

    invoke-virtual {v5, v4}, Lcom/cyjh/mobileanjian/ipc/ui/d;->addView(Landroid/view/View;)V

    .line 244
    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v5

    if-ne v3, v5, :cond_5

    .line 245
    invoke-virtual {v4, v8}, Landroid/view/View;->setSelected(Z)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private a(II)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->f:I

    .line 145
    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->g:I

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private a(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/l;

    .line 3063
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/l;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3064
    iget-object p1, v0, Lcom/cyjh/mobileanjian/ipc/ui/l;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3065
    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/l;->notifyDataSetChanged()V

    .line 176
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 177
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method

.method static synthetic a(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;II)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->b(II)V

    return-void
.end method

.method static synthetic b(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->j:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-object p0
.end method

.method private b(II)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->k:Lcom/cyjh/mobileanjian/ipc/ui/d;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/d;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_4

    if-ltz p1, :cond_4

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->k:Lcom/cyjh/mobileanjian/ipc/ui/d;

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/d;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 271
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    if-gtz p1, :cond_1

    if-lez p2, :cond_2

    .line 275
    :cond_1
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->e:I

    sub-int/2addr v0, p1

    :cond_2
    const/4 p1, 0x0

    .line 278
    invoke-virtual {p0, v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->scrollTo(II)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->a:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method


# virtual methods
.method public getViewPager()Landroid/support/v4/view/ViewPager;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->a:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 256
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 258
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->b(II)V

    :cond_0
    return-void
.end method

.method public setCustomTabColorizer(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$c;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->k:Lcom/cyjh/mobileanjian/ipc/ui/d;

    .line 1075
    iput-object p1, v0, Lcom/cyjh/mobileanjian/ipc/ui/d;->a:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$c;

    .line 1076
    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/d;->invalidate()V

    return-void
.end method

.method public setDistributeEvenly(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->h:Z

    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->j:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public varargs setSelectedIndicatorColors([I)V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->k:Lcom/cyjh/mobileanjian/ipc/ui/d;

    const/4 v1, 0x0

    .line 1081
    iput-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/d;->a:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$c;

    .line 1082
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/d;->b:Lcom/cyjh/mobileanjian/ipc/ui/d$a;

    .line 1161
    iput-object p1, v1, Lcom/cyjh/mobileanjian/ipc/ui/d$a;->a:[I

    .line 1083
    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/d;->invalidate()V

    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 11

    .line 153
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->k:Lcom/cyjh/mobileanjian/ipc/ui/d;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/d;->removeAllViews()V

    .line 155
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->a:Landroid/support/v4/view/ViewPager;

    if-eqz p1, :cond_6

    .line 157
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$a;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;B)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1205
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object p1

    .line 1206
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$b;

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$b;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;B)V

    const/4 v2, 0x0

    .line 1208
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 1212
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->f:I

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 1214
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->f:I

    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->k:Lcom/cyjh/mobileanjian/ipc/ui/d;

    invoke-virtual {v3, v5, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 1216
    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->g:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    goto :goto_1

    :cond_0
    move-object v3, v4

    move-object v5, v3

    :goto_1
    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez v3, :cond_1

    .line 1220
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 2185
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x11

    .line 2186
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v3, 0x41400000    # 12.0f

    .line 2187
    invoke-virtual {v8, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2189
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v3, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2192
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 2193
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    const v10, 0x101030e

    invoke-virtual {v9, v10, v3, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2195
    iget v3, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2196
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setAllCaps(Z)V

    const/high16 v3, 0x40800000    # 4.0f

    .line 2198
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    mul-float v9, v9, v3

    float-to-int v3, v9

    .line 2199
    invoke-virtual {v8, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2200
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    move-object v3, v8

    :cond_1
    if-nez v5, :cond_2

    .line 1223
    const-class v8, Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1224
    move-object v5, v3

    check-cast v5, Landroid/widget/TextView;

    .line 1227
    :cond_2
    iget-boolean v8, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->h:Z

    if-eqz v8, :cond_3

    .line 1228
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 1229
    iput v1, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v9, 0x3f800000    # 1.0f

    .line 1230
    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1233
    :cond_3
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/cyjh/mqsdk/R$color;->selector_tab:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/high16 v8, 0x41600000    # 14.0f

    .line 1234
    invoke-virtual {v5, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1235
    invoke-virtual {p1, v2}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1236
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 1237
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1238
    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->i:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 1240
    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1243
    :cond_4
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->k:Lcom/cyjh/mobileanjian/ipc/ui/d;

    invoke-virtual {v4, v3}, Lcom/cyjh/mobileanjian/ipc/ui/d;->addView(Landroid/view/View;)V

    .line 1244
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    if-ne v2, v4, :cond_5

    .line 1245
    invoke-virtual {v3, v7}, Landroid/view/View;->setSelected(Z)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

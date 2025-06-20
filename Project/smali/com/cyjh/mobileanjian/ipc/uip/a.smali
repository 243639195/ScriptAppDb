.class public final Lcom/cyjh/mobileanjian/ipc/uip/a;
.super Landroid/widget/LinearLayout;
.source "CircleIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mobileanjian/ipc/uip/a$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x8


# instance fields
.field private b:Landroid/support/v4/view/ViewPager;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/animation/Animator;

.field private k:Landroid/animation/Animator;

.field private l:Landroid/animation/Animator;

.field private m:Landroid/animation/Animator;

.field private n:I

.field private final o:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private p:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->c:I

    .line 28
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->d:I

    .line 29
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->e:I

    .line 30
    sget v1, Lcom/cyjh/mqsdk/R$animator;->no_animator:I

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->f:I

    const/4 v1, 0x0

    .line 31
    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->g:I

    .line 32
    sget v1, Lcom/cyjh/mqsdk/R$drawable;->ci_blue_point:I

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->h:I

    .line 33
    sget v1, Lcom/cyjh/mqsdk/R$drawable;->ci_gray_point:I

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->i:I

    .line 39
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->n:I

    .line 175
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/uip/a$1;

    invoke-direct {v0, p0}, Lcom/cyjh/mobileanjian/ipc/uip/a$1;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/a;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->o:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 223
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/uip/a$2;

    invoke-direct {v0, p0}, Lcom/cyjh/mobileanjian/ipc/uip/a$2;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/a;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->p:Landroid/database/DataSetObserver;

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->c:I

    .line 28
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->d:I

    .line 29
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->e:I

    .line 30
    sget v1, Lcom/cyjh/mqsdk/R$animator;->no_animator:I

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->f:I

    const/4 v1, 0x0

    .line 31
    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->g:I

    .line 32
    sget v1, Lcom/cyjh/mqsdk/R$drawable;->ci_blue_point:I

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->h:I

    .line 33
    sget v1, Lcom/cyjh/mqsdk/R$drawable;->ci_gray_point:I

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->i:I

    .line 39
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->n:I

    .line 175
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/uip/a$1;

    invoke-direct {v0, p0}, Lcom/cyjh/mobileanjian/ipc/uip/a$1;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/a;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->o:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 223
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/uip/a$2;

    invoke-direct {v0, p0}, Lcom/cyjh/mobileanjian/ipc/uip/a$2;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/a;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->p:Landroid/database/DataSetObserver;

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 27
    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->c:I

    .line 28
    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->d:I

    .line 29
    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->e:I

    .line 30
    sget v0, Lcom/cyjh/mqsdk/R$animator;->no_animator:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->f:I

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->g:I

    .line 32
    sget v0, Lcom/cyjh/mqsdk/R$drawable;->ci_blue_point:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->h:I

    .line 33
    sget v0, Lcom/cyjh/mqsdk/R$drawable;->ci_gray_point:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->i:I

    .line 39
    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->n:I

    .line 175
    new-instance p3, Lcom/cyjh/mobileanjian/ipc/uip/a$1;

    invoke-direct {p3, p0}, Lcom/cyjh/mobileanjian/ipc/uip/a$1;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/a;)V

    iput-object p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->o:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 223
    new-instance p3, Lcom/cyjh/mobileanjian/ipc/uip/a$2;

    invoke-direct {p3, p0}, Lcom/cyjh/mobileanjian/ipc/uip/a$2;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/a;)V

    iput-object p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->p:Landroid/database/DataSetObserver;

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, -0x1

    .line 27
    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->c:I

    .line 28
    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->d:I

    .line 29
    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->e:I

    .line 30
    sget p4, Lcom/cyjh/mqsdk/R$animator;->no_animator:I

    iput p4, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->f:I

    const/4 p4, 0x0

    .line 31
    iput p4, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->g:I

    .line 32
    sget p4, Lcom/cyjh/mqsdk/R$drawable;->ci_blue_point:I

    iput p4, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->h:I

    .line 33
    sget p4, Lcom/cyjh/mqsdk/R$drawable;->ci_gray_point:I

    iput p4, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->i:I

    .line 39
    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->n:I

    .line 175
    new-instance p3, Lcom/cyjh/mobileanjian/ipc/uip/a$1;

    invoke-direct {p3, p0}, Lcom/cyjh/mobileanjian/ipc/uip/a$1;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/a;)V

    iput-object p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->o:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 223
    new-instance p3, Lcom/cyjh/mobileanjian/ipc/uip/a$2;

    invoke-direct {p3, p0}, Lcom/cyjh/mobileanjian/ipc/uip/a$2;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/a;)V

    iput-object p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->p:Landroid/database/DataSetObserver;

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/cyjh/mobileanjian/ipc/uip/a;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->n:I

    return p1
.end method

.method static synthetic a(Lcom/cyjh/mobileanjian/ipc/uip/a;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->b:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method private a()V
    .locals 6

    .line 259
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->removeAllViews()V

    .line 260
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 265
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->getOrientation()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    if-ne v1, v3, :cond_1

    .line 269
    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->h:I

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->l:Landroid/animation/Animator;

    invoke-direct {p0, v2, v4, v5}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(IILandroid/animation/Animator;)V

    goto :goto_1

    .line 271
    :cond_1
    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->i:I

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->m:Landroid/animation/Animator;

    invoke-direct {p0, v2, v4, v5}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(IILandroid/animation/Animator;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(III)V
    .locals 3

    .line 104
    sget v0, Lcom/cyjh/mqsdk/R$animator;->scale_with_alpha:I

    sget v1, Lcom/cyjh/mqsdk/R$drawable;->white_radius:I

    sget v2, Lcom/cyjh/mqsdk/R$drawable;->white_radius:I

    .line 1113
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->d:I

    .line 1114
    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->e:I

    .line 1115
    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->c:I

    .line 1117
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->f:I

    const/4 p1, 0x0

    .line 1118
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->g:I

    .line 1119
    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->h:I

    .line 1120
    iput v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->i:I

    .line 1122
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(IIIIII)V
    .locals 0
    .param p4    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 113
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->d:I

    .line 114
    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->e:I

    .line 115
    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->c:I

    .line 117
    iput p4, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->f:I

    const/4 p1, 0x0

    .line 118
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->g:I

    .line 119
    iput p5, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->h:I

    .line 120
    iput p6, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->i:I

    .line 122
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(IILandroid/animation/Animator;)V
    .locals 2
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 279
    invoke-virtual {p3}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p3}, Landroid/animation/Animator;->end()V

    .line 281
    invoke-virtual {p3}, Landroid/animation/Animator;->cancel()V

    .line 284
    :cond_0
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 285
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 286
    iget p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->d:I

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->e:I

    invoke-virtual {p0, v0, p2, v1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->addView(Landroid/view/View;II)V

    .line 287
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    if-nez p1, :cond_1

    .line 290
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->c:I

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 291
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->c:I

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 293
    :cond_1
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->c:I

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 294
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->c:I

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 297
    :goto_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    invoke-virtual {p3, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 300
    invoke-virtual {p3}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .line 126
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->d:I

    const/high16 v1, 0x41000000    # 8.0f

    if-gez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(F)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->d:I

    :goto_0
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->d:I

    .line 127
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->e:I

    if-gez v0, :cond_1

    .line 128
    invoke-virtual {p0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(F)I

    move-result v0

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->e:I

    :goto_1
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->e:I

    .line 129
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->c:I

    if-gez v0, :cond_2

    .line 130
    invoke-virtual {p0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(F)I

    move-result v0

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->c:I

    :goto_2
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->c:I

    .line 132
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->f:I

    if-nez v0, :cond_3

    sget v0, Lcom/cyjh/mqsdk/R$animator;->scale_with_alpha:I

    goto :goto_3

    :cond_3
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->f:I

    :goto_3
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->f:I

    .line 134
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->b(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->j:Landroid/animation/Animator;

    .line 135
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->b(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->l:Landroid/animation/Animator;

    .line 136
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->l:Landroid/animation/Animator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 138
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->c(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->k:Landroid/animation/Animator;

    .line 139
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->c(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->m:Landroid/animation/Animator;

    .line 140
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->m:Landroid/animation/Animator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 142
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->h:I

    if-nez p1, :cond_4

    sget p1, Lcom/cyjh/mqsdk/R$drawable;->white_radius:I

    goto :goto_4

    :cond_4
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->h:I

    :goto_4
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->h:I

    .line 144
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->i:I

    if-nez p1, :cond_5

    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->h:I

    goto :goto_5

    :cond_5
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->i:I

    :goto_5
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->i:I

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    if-eqz p2, :cond_2

    .line 1072
    sget-object v0, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 1073
    sget v0, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_width:I

    const/4 v1, -0x1

    .line 1074
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->d:I

    .line 1075
    sget v0, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_height:I

    .line 1076
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->e:I

    .line 1077
    sget v0, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_margin:I

    .line 1078
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->c:I

    .line 1080
    sget v0, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_animator:I

    sget v2, Lcom/cyjh/mqsdk/R$animator;->scale_with_alpha:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->f:I

    .line 1082
    sget v0, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_animator_reverse:I

    const/4 v2, 0x0

    .line 1083
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->g:I

    .line 1084
    sget v0, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_drawable:I

    sget v3, Lcom/cyjh/mqsdk/R$drawable;->white_radius:I

    .line 1085
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->h:I

    .line 1087
    sget v0, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_drawable_unselected:I

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->h:I

    .line 1088
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->i:I

    .line 1091
    sget v0, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_orientation:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const/4 v2, 0x1

    .line 1092
    :cond_0
    invoke-virtual {p0, v2}, Lcom/cyjh/mobileanjian/ipc/uip/a;->setOrientation(I)V

    .line 1094
    sget v0, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_gravity:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x11

    .line 1095
    :goto_0
    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->setGravity(I)V

    .line 1097
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    :cond_2
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method private b(Landroid/content/Context;)Landroid/animation/Animator;
    .locals 1

    .line 150
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->f:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/cyjh/mobileanjian/ipc/uip/a;)Landroid/animation/Animator;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->k:Landroid/animation/Animator;

    return-object p0
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 72
    :cond_0
    sget-object v0, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 73
    sget p2, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_width:I

    const/4 v0, -0x1

    .line 74
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->d:I

    .line 75
    sget p2, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_height:I

    .line 76
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->e:I

    .line 77
    sget p2, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_margin:I

    .line 78
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->c:I

    .line 80
    sget p2, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_animator:I

    sget v1, Lcom/cyjh/mqsdk/R$animator;->scale_with_alpha:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->f:I

    .line 82
    sget p2, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_animator_reverse:I

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->g:I

    .line 84
    sget p2, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_drawable:I

    sget v2, Lcom/cyjh/mqsdk/R$drawable;->white_radius:I

    .line 85
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->h:I

    .line 87
    sget p2, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_drawable_unselected:I

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->h:I

    .line 88
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->i:I

    .line 91
    sget p2, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_orientation:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    const/4 v1, 0x1

    .line 92
    :cond_1
    invoke-virtual {p0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->setOrientation(I)V

    .line 94
    sget p2, Lcom/cyjh/mqsdk/R$styleable;->CircleIndicator_ci_gravity:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_2

    goto :goto_0

    :cond_2
    const/16 p2, 0x11

    .line 95
    :goto_0
    invoke-virtual {p0, p2}, Lcom/cyjh/mobileanjian/ipc/uip/a;->setGravity(I)V

    .line 97
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private c(Landroid/content/Context;)Landroid/animation/Animator;
    .locals 2

    .line 155
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->g:I

    if-nez v0, :cond_0

    .line 156
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->f:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    .line 157
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/uip/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/a$a;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/a;B)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 159
    :cond_0
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->g:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method static synthetic c(Lcom/cyjh/mobileanjian/ipc/uip/a;)Landroid/animation/Animator;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->j:Landroid/animation/Animator;

    return-object p0
.end method

.method static synthetic d(Lcom/cyjh/mobileanjian/ipc/uip/a;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->n:I

    return p0
.end method

.method static synthetic e(Lcom/cyjh/mobileanjian/ipc/uip/a;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->i:I

    return p0
.end method

.method static synthetic f(Lcom/cyjh/mobileanjian/ipc/uip/a;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->h:I

    return p0
.end method

.method static synthetic g(Lcom/cyjh/mobileanjian/ipc/uip/a;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a()V

    return-void
.end method


# virtual methods
.method public final a(F)I
    .locals 1

    .line 311
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public final getDataSetObserver()Landroid/database/DataSetObserver;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->p:Landroid/database/DataSetObserver;

    return-object v0
.end method

.method public final setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->b:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 252
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "can not find Viewpager , setViewPager first"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 255
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public final setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 1

    .line 165
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->b:Landroid/support/v4/view/ViewPager;

    .line 166
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->b:Landroid/support/v4/view/ViewPager;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 167
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->n:I

    .line 168
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a()V

    .line 169
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->b:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->o:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 170
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->b:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->o:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 171
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->o:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_0
    return-void
.end method

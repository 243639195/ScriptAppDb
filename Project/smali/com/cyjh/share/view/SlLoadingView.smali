.class public Lcom/cyjh/share/view/SlLoadingView;
.super Landroid/widget/ImageView;
.source "SlLoadingView.java"


# instance fields
.field protected rotateAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0}, Lcom/cyjh/share/view/SlLoadingView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0}, Lcom/cyjh/share/view/SlLoadingView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0}, Lcom/cyjh/share/view/SlLoadingView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 35
    invoke-virtual {p0}, Lcom/cyjh/share/view/SlLoadingView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/cyjh/share/R$anim;->downing_animation:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/view/SlLoadingView;->rotateAnimation:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 40
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 41
    iget-object v0, p0, Lcom/cyjh/share/view/SlLoadingView;->rotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/cyjh/share/view/SlLoadingView;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 46
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 47
    invoke-virtual {p0}, Lcom/cyjh/share/view/SlLoadingView;->clearAnimation()V

    return-void
.end method

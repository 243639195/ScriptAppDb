.class public Lcom/iflytek/voiceads/view/InterstitialAdView;
.super Lcom/iflytek/voiceads/view/AdView;


# instance fields
.field private t:Landroid/content/Context;

.field private final u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/iflytek/voiceads/view/AdView;-><init>(Landroid/content/Context;)V

    const-string v0, "close_widget"

    iput-object v0, p0, Lcom/iflytek/voiceads/view/InterstitialAdView;->u:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Ljava/lang/String;Lcom/iflytek/voiceads/listener/InternalListener;)V
    .locals 6

    sget-object v4, Lcom/iflytek/voiceads/utils/a$a;->b:Lcom/iflytek/voiceads/utils/a$a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/voiceads/view/AdView;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Ljava/lang/String;Lcom/iflytek/voiceads/utils/a$a;Lcom/iflytek/voiceads/listener/InternalListener;)V

    const-string v0, "close_widget"

    iput-object v0, p0, Lcom/iflytek/voiceads/view/InterstitialAdView;->u:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/voiceads/view/InterstitialAdView;->t:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/widget/ImageView;)V
    .locals 3

    new-instance v0, Lcom/iflytek/voiceads/b/a;

    iget-object v1, p0, Lcom/iflytek/voiceads/view/InterstitialAdView;->t:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/voiceads/view/InterstitialAdView;->g:Lcom/iflytek/voiceads/d/a;

    iget-object v2, v2, Lcom/iflytek/voiceads/d/a;->I:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/iflytek/voiceads/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/iflytek/voiceads/view/g;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/voiceads/view/g;-><init>(Lcom/iflytek/voiceads/view/InterstitialAdView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/b/a;->a(Lcom/iflytek/voiceads/b/a$a;)V

    return-void
.end method


# virtual methods
.method public j()V
    .locals 8

    const/high16 v4, 0x41c80000    # 25.0f

    iget-object v0, p0, Lcom/iflytek/voiceads/view/InterstitialAdView;->g:Lcom/iflytek/voiceads/d/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/view/InterstitialAdView;->g:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/voiceads/view/InterstitialAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "adview parent is null"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    const-string v2, "close_widget"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/voiceads/view/InterstitialAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x28

    mul-float v3, v4, v2

    float-to-int v3, v3

    mul-float/2addr v2, v4

    float-to-int v2, v2

    const-wide v4, 0x3fd3333333333333L    # 0.3

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-int v4, v4

    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/iflytek/voiceads/view/InterstitialAdView;->t:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput v4, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v1, v3

    sub-int/2addr v1, v4

    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const-string v1, "close_widget"

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v5}, Lcom/iflytek/voiceads/view/InterstitialAdView;->a(Landroid/widget/ImageView;)V

    new-instance v0, Lcom/iflytek/voiceads/view/f;

    invoke-direct {v0, p0}, Lcom/iflytek/voiceads/view/f;-><init>(Lcom/iflytek/voiceads/view/InterstitialAdView;)V

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public k()V
    .locals 5

    iget-object v0, p0, Lcom/iflytek/voiceads/view/InterstitialAdView;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/voiceads/param/d;->c(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/voiceads/view/InterstitialAdView;->t:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/voiceads/param/d;->d(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x28

    iget-object v1, p0, Lcom/iflytek/voiceads/view/InterstitialAdView;->e:Lcom/iflytek/voiceads/param/a;

    invoke-virtual {v1}, Lcom/iflytek/voiceads/param/a;->b()I

    move-result v1

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/iflytek/voiceads/view/InterstitialAdView;->e:Lcom/iflytek/voiceads/param/a;

    invoke-virtual {v2}, Lcom/iflytek/voiceads/param/a;->a()I

    move-result v2

    div-int/2addr v1, v2

    const-string v2, "IFLY_AD_SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InterstitialAdView adWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", adHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/voiceads/view/InterstitialAdView;->b:Landroid/widget/RelativeLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setGravity(I)V

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/voiceads/view/InterstitialAdView;->a(II)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Lcom/iflytek/voiceads/view/AdView;->onDetachedFromWindow()V

    return-void
.end method

.class final Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$a;
.super Ljava/lang/Object;
.source "SlidingTabLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$a;->a:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;B)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$a;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 1

    .line 308
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$a;->b:I

    .line 310
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$a;->a:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->b(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$a;->a:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->b(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$a;->a:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->a(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Lcom/cyjh/mobileanjian/ipc/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/d;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$a;->a:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->a(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Lcom/cyjh/mobileanjian/ipc/ui/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/ui/d;->a(IF)V

    .line 294
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$a;->a:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->a(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Lcom/cyjh/mobileanjian/ipc/ui/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/d;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 296
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 298
    :goto_0
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$a;->a:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-static {v1, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->a(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;II)V

    .line 300
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$a;->a:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->b(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$a;->a:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->b(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 4

    .line 317
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$a;->b:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$a;->a:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->a(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Lcom/cyjh/mobileanjian/ipc/ui/d;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/cyjh/mobileanjian/ipc/ui/d;->a(IF)V

    .line 319
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$a;->a:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-static {v0, p1, v1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->a(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;II)V

    :cond_0
    const/4 v0, 0x0

    .line 321
    :goto_0
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$a;->a:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->a(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Lcom/cyjh/mobileanjian/ipc/ui/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/ui/d;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 322
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$a;->a:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->a(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Lcom/cyjh/mobileanjian/ipc/ui/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/d;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne p1, v0, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$a;->a:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->b(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 325
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$a;->a:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->b(Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_3
    return-void
.end method

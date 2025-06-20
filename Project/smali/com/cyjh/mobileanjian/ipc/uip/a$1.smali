.class final Lcom/cyjh/mobileanjian/ipc/uip/a$1;
.super Ljava/lang/Object;
.source "CircleIndicator.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/uip/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mobileanjian/ipc/uip/a;


# direct methods
.method constructor <init>(Lcom/cyjh/mobileanjian/ipc/uip/a;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$1;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$1;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(Lcom/cyjh/mobileanjian/ipc/uip/a;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$1;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(Lcom/cyjh/mobileanjian/ipc/uip/a;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$1;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->b(Lcom/cyjh/mobileanjian/ipc/uip/a;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$1;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->b(Lcom/cyjh/mobileanjian/ipc/uip/a;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 190
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$1;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->b(Lcom/cyjh/mobileanjian/ipc/uip/a;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$1;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->c(Lcom/cyjh/mobileanjian/ipc/uip/a;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$1;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->c(Lcom/cyjh/mobileanjian/ipc/uip/a;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 195
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$1;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->c(Lcom/cyjh/mobileanjian/ipc/uip/a;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$1;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->d(Lcom/cyjh/mobileanjian/ipc/uip/a;)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$1;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$1;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->d(Lcom/cyjh/mobileanjian/ipc/uip/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 200
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$1;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->e(Lcom/cyjh/mobileanjian/ipc/uip/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 201
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$1;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->b(Lcom/cyjh/mobileanjian/ipc/uip/a;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$1;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->b(Lcom/cyjh/mobileanjian/ipc/uip/a;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 205
    :cond_3
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$1;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 207
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$1;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->f(Lcom/cyjh/mobileanjian/ipc/uip/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 208
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$1;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->c(Lcom/cyjh/mobileanjian/ipc/uip/a;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$1;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->c(Lcom/cyjh/mobileanjian/ipc/uip/a;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 211
    :cond_4
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$1;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-static {v0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(Lcom/cyjh/mobileanjian/ipc/uip/a;I)I

    return-void

    :cond_5
    :goto_0
    return-void
.end method

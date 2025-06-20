.class final Lcom/cyjh/mobileanjian/ipc/ui/k$4;
.super Ljava/lang/Object;
.source "UiShowLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

.field final synthetic b:Lcom/cyjh/mobileanjian/ipc/ui/k;


# direct methods
.method constructor <init>(Lcom/cyjh/mobileanjian/ipc/ui/k;Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k$4;->b:Lcom/cyjh/mobileanjian/ipc/ui/k;

    iput-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/k$4;->a:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

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
    .locals 1

    .line 335
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k$4;->a:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setFocusable(Z)V

    .line 336
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k$4;->a:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setFocusableInTouchMode(Z)V

    .line 337
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k$4;->a:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->requestFocus()Z

    return-void
.end method

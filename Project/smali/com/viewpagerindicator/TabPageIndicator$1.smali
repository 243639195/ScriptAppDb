.class Lcom/viewpagerindicator/TabPageIndicator$1;
.super Ljava/lang/Object;
.source "TabPageIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/viewpagerindicator/TabPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viewpagerindicator/TabPageIndicator;


# direct methods
.method constructor <init>(Lcom/viewpagerindicator/TabPageIndicator;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator$1;->this$0:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 61
    check-cast p1, Lcom/viewpagerindicator/TabPageIndicator$TabView;

    .line 62
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator$1;->this$0:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicator;->access$000(Lcom/viewpagerindicator/TabPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 63
    invoke-virtual {p1}, Lcom/viewpagerindicator/TabPageIndicator$TabView;->getIndex()I

    move-result p1

    .line 64
    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicator$1;->this$0:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-static {v1}, Lcom/viewpagerindicator/TabPageIndicator;->access$000(Lcom/viewpagerindicator/TabPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    if-ne v0, p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator$1;->this$0:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicator;->access$100(Lcom/viewpagerindicator/TabPageIndicator;)Lcom/viewpagerindicator/TabPageIndicator$OnTabReselectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator$1;->this$0:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicator;->access$100(Lcom/viewpagerindicator/TabPageIndicator;)Lcom/viewpagerindicator/TabPageIndicator$OnTabReselectedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viewpagerindicator/TabPageIndicator$OnTabReselectedListener;->onTabReselected(I)V

    :cond_0
    return-void
.end method

.class public final Lcom/cyjh/mobileanjian/ipc/ui/l;
.super Landroid/support/v4/view/PagerAdapter;
.source "UiShowPagerAdapter.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/LinearLayout;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/l;->a:Ljava/util/List;

    .line 21
    iput-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/l;->b:Ljava/util/List;

    return-void
.end method

.method private a(I)Landroid/view/View;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/l;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 98
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_1
    return-object v1
.end method

.method private a(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/l;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/l;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/l;->notifyDataSetChanged()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 84
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Landroid/content/Context;)Lcom/cyjh/mobileanjian/ipc/ui/g;

    move-result-object v2

    .line 87
    invoke-virtual {v2, p1, p3, p4}, Lcom/cyjh/mobileanjian/ipc/ui/g;->c(Ljava/lang/String;II)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 88
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 72
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 75
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 47
    iget-object p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/l;->a:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final getCount()I
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/l;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/l;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

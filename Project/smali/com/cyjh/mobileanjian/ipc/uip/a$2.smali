.class final Lcom/cyjh/mobileanjian/ipc/uip/a$2;
.super Landroid/database/DataSetObserver;
.source "CircleIndicator.java"


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

    .line 223
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$2;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    .line 226
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 227
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$2;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(Lcom/cyjh/mobileanjian/ipc/uip/a;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$2;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(Lcom/cyjh/mobileanjian/ipc/uip/a;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 232
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$2;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->getChildCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    return-void

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$2;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->d(Lcom/cyjh/mobileanjian/ipc/uip/a;)I

    move-result v1

    if-ge v1, v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$2;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$2;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(Lcom/cyjh/mobileanjian/ipc/uip/a;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(Lcom/cyjh/mobileanjian/ipc/uip/a;I)I

    goto :goto_0

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$2;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(Lcom/cyjh/mobileanjian/ipc/uip/a;I)I

    .line 242
    :goto_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$2;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/a;->g(Lcom/cyjh/mobileanjian/ipc/uip/a;)V

    return-void
.end method

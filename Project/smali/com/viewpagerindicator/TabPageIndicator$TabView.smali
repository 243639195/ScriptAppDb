.class Lcom/viewpagerindicator/TabPageIndicator$TabView;
.super Landroid/widget/TextView;
.source "TabPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/viewpagerindicator/TabPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabView"
.end annotation


# instance fields
.field private mIndex:I

.field final synthetic this$0:Lcom/viewpagerindicator/TabPageIndicator;


# direct methods
.method public constructor <init>(Lcom/viewpagerindicator/TabPageIndicator;Landroid/content/Context;)V
    .locals 1

    .line 268
    iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator$TabView;->this$0:Lcom/viewpagerindicator/TabPageIndicator;

    const/4 p1, 0x0

    const v0, 0x7f01019a

    .line 269
    invoke-direct {p0, p2, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$302(Lcom/viewpagerindicator/TabPageIndicator$TabView;I)I
    .locals 0

    .line 265
    iput p1, p0, Lcom/viewpagerindicator/TabPageIndicator$TabView;->mIndex:I

    return p1
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 284
    iget v0, p0, Lcom/viewpagerindicator/TabPageIndicator$TabView;->mIndex:I

    return v0
.end method

.method public onMeasure(II)V
    .locals 1

    .line 274
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 277
    iget-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator$TabView;->this$0:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-static {p1}, Lcom/viewpagerindicator/TabPageIndicator;->access$400(Lcom/viewpagerindicator/TabPageIndicator;)I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator$TabView;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator$TabView;->this$0:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicator;->access$400(Lcom/viewpagerindicator/TabPageIndicator;)I

    move-result v0

    if-le p1, v0, :cond_0

    .line 278
    iget-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator$TabView;->this$0:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-static {p1}, Lcom/viewpagerindicator/TabPageIndicator;->access$400(Lcom/viewpagerindicator/TabPageIndicator;)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    :cond_0
    return-void
.end method

.class public final Lcom/cyjh/mobileanjian/ipc/ui/h;
.super Ljava/lang/Object;
.source "UiManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mobileanjian/ipc/ui/h$a;
    }
.end annotation


# static fields
.field private static final j:Ljava/lang/String; = "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

.field private static final k:I = 0x20


# instance fields
.field public a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

.field public b:I

.field public c:[Ljava/util/HashMap;

.field public d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

.field public e:I

.field public f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/cyjh/mobileanjian/ipc/ui/m;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:I

.field private l:Landroid/content/Context;

.field private m:Lcom/cyjh/mobileanjian/ipc/ui/g;

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    .line 63
    new-array v1, v0, [Lcom/cyjh/mobileanjian/ipc/ui/k;

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    const/4 v1, 0x0

    .line 64
    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    .line 68
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    .line 69
    new-array v2, v0, [Ljava/util/HashMap;

    iput-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    .line 71
    new-array v0, v0, [Lcom/cyjh/mobileanjian/ipc/ui/j;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    .line 72
    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->e:I

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 78
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->i:I

    .line 83
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->l:Landroid/content/Context;

    .line 84
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Landroid/content/Context;)Lcom/cyjh/mobileanjian/ipc/ui/g;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->m:Lcom/cyjh/mobileanjian/ipc/ui/g;

    return-void
.end method

.method private varargs a(I[Ljava/lang/Object;)V
    .locals 2

    .line 1526
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->l:Landroid/content/Context;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->l:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xdac

    invoke-static {v0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->show()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 654
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 658
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 664
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    .line 669
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    .line 670
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 671
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    .line 1821
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1823
    sget p2, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_float:I

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, p2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    .line 1824
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 1828
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lcom/cyjh/mobileanjian/ipc/ui/j;->setOpacity(I)V

    .line 1866
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;II)V
    .locals 3

    .line 1321
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    .line 1322
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->m:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {v2, p1, p2, p3}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;II)Lcom/cyjh/mobileanjian/ipc/ui/k;

    move-result-object p2

    aput-object p2, v0, v1

    .line 1323
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    iget p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1325
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    aput-object v0, p2, p3

    .line 1327
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p2, p2, p3

    new-instance p3, Lcom/cyjh/mobileanjian/ipc/ui/h$2;

    invoke-direct {p3, p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h$2;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/h;Ljava/lang/String;)V

    .line 13395
    iput-object p3, p2, Lcom/cyjh/mobileanjian/ipc/ui/k;->b:Landroid/view/View$OnClickListener;

    .line 1344
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p2, p2, p3

    new-instance p3, Lcom/cyjh/mobileanjian/ipc/ui/h$3;

    invoke-direct {p3, p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h$3;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/h;Ljava/lang/String;)V

    .line 14390
    iput-object p3, p2, Lcom/cyjh/mobileanjian/ipc/ui/k;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a(Ljava/lang/String;IIII)V
    .locals 8

    .line 1695
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1697
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    .line 19211
    iget-boolean v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    if-eqz v0, :cond_0

    .line 1699
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->b()V

    .line 1702
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1703
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1704
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1705
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1706
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doNewFloat key:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " parentTag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " tag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1707
    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1708
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1709
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1714
    :cond_2
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->m:Lcom/cyjh/mobileanjian/ipc/ui/g;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;IIII)Lcom/cyjh/mobileanjian/ipc/ui/j;

    move-result-object p1

    aput-object p1, v0, v1

    return-void

    .line 1718
    :cond_3
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->e:I

    .line 1719
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->e:I

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->m:Lcom/cyjh/mobileanjian/ipc/ui/g;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;IIII)Lcom/cyjh/mobileanjian/ipc/ui/j;

    move-result-object p2

    aput-object p2, v0, v1

    .line 1721
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    iget p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->e:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)V
    .locals 1

    .line 1547
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    .line 1548
    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p0

    .line 1549
    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p0

    .line 1550
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object p0

    .line 1552
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 1553
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    .line 1554
    invoke-virtual {p1, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 1555
    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p0

    .line 1556
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p0

    .line 1557
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/cyjh/mq/sdk/MqRunner;->c(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 3

    .line 1771
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1773
    sget p2, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_float:I

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, p2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    .line 1774
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 1779
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    .line 22215
    iput-boolean p2, p1, Lcom/cyjh/mobileanjian/ipc/ui/j;->e:Z

    .line 1780
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void
.end method

.method private static a(Z)V
    .locals 2

    .line 480
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 481
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 482
    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p0

    .line 483
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p0

    .line 484
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1404
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1406
    sget p2, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, p2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    return v1

    .line 1410
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Ljava/lang/String;)V

    return v1
.end method

.method static synthetic a(Lcom/cyjh/mobileanjian/ipc/ui/h;)[Lcom/cyjh/mobileanjian/ipc/ui/k;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    return-object p0
.end method

.method private b()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->i:I

    return v0
.end method

.method static synthetic b(Lcom/cyjh/mobileanjian/ipc/ui/h;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    return p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .line 1023
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1025
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1032
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 1035
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    .line 1036
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->b:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v2, v3, :cond_2

    .line 1038
    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocusable()Z

    move-result v1

    .line 1040
    :cond_2
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    .line 1041
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->BOOL:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    .line 1042
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    .line 1043
    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setBoolValue(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    .line 1044
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 1045
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1046
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    .line 1047
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private b(Ljava/lang/String;I)V
    .locals 5

    .line 1871
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1873
    sget p2, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_float:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-direct {p0, p2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    .line 1874
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 1878
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, v0, v3

    int-to-float p2, p2

    .line 23229
    iput p2, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    .line 23230
    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v3, 0x8

    .line 23231
    new-array v3, v3, [F

    iget v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v4, v3, v1

    iget v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v1, v3, v2

    const/4 v1, 0x2

    iget v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v4, v3, v1

    const/4 v1, 0x3

    iget v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v4, v3, v1

    const/4 v1, 0x4

    iget v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v4, v3, v1

    const/4 v1, 0x5

    iget v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v4, v3, v1

    const/4 v1, 0x6

    iget v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v4, v3, v1

    const/4 v1, 0x7

    iget v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v4, v3, v1

    .line 23232
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 23234
    :try_start_0
    iget v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->f:I

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23238
    :catch_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_1

    .line 23239
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 23241
    :cond_1
    iget-object p2, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->h:I

    mul-int/lit16 v0, v0, 0xff

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1879
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, p2, p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->e()V

    .line 1880
    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    .line 1887
    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1889
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array p2, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    .line 1890
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_0
    const-string v0, "#"

    .line 1894
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1895
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1897
    :cond_1
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 1898
    invoke-static {p2}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result p2

    .line 1899
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-eqz v0, :cond_3

    .line 1901
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v0, v0, v4

    .line 23245
    iput p2, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->f:I

    .line 23246
    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 23247
    new-array v3, v3, [F

    iget v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v4, v3, v1

    iget v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v1, v3, v2

    const/4 v1, 0x2

    iget v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v4, v3, v1

    const/4 v1, 0x3

    iget v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v4, v3, v1

    const/4 v1, 0x4

    iget v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v4, v3, v1

    const/4 v1, 0x5

    iget v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v4, v3, v1

    const/4 v1, 0x6

    iget v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v4, v3, v1

    const/4 v1, 0x7

    iget v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v4, v3, v1

    .line 23248
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 23250
    :try_start_0
    iget v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->f:I

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23254
    :catch_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_2

    .line 23255
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 23257
    :cond_2
    iget-object p2, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->h:I

    mul-int/lit16 v0, v0, 0xff

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1902
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, p2, p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->e()V

    goto :goto_0

    .line 1904
    :cond_3
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_4

    .line 1906
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 1909
    :cond_4
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v4, v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1912
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 1915
    :cond_5
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v1, v4, :cond_6

    .line 1917
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1918
    new-array v1, v3, [F

    fill-array-data v1, :array_0

    .line 1919
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 1920
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1921
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1924
    :cond_6
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/ui/m;->f:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq p1, v1, :cond_7

    .line 1926
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1930
    :cond_7
    :goto_0
    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private b(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z
    .locals 8

    .line 489
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 494
    :cond_0
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 496
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 498
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_widget:I

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-direct {p0, p1, v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    return v1

    .line 503
    :cond_1
    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getCommand()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    .line 632
    :pswitch_0
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getVisibleStatus()I

    move-result p1

    packed-switch p1, :pswitch_data_1

    .line 643
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :pswitch_1
    const/16 p1, 0x8

    .line 639
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :pswitch_2
    const/4 p1, 0x4

    .line 636
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 606
    :pswitch_3
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->i:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v4, :cond_2

    return v1

    .line 608
    :cond_2
    check-cast v2, Landroid/widget/LinearLayout;

    .line 609
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 612
    :pswitch_4
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/cyjh/mobileanjian/ipc/ui/m;->e:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v4, v5, :cond_3

    .line 614
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEnabledStatus()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 615
    check-cast v2, Landroid/widget/RadioGroup;

    .line 616
    :goto_0
    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_11

    .line 618
    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEnabledStatus()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 620
    :cond_3
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v4

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/ui/m;->b:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v0, v1, :cond_4

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set edittext enabled. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEnabledStatus()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 623
    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEnabledStatus()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 624
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEnabledStatus()Z

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    goto/16 :goto_2

    .line 627
    :cond_4
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEnabledStatus()Z

    move-result p1

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_2

    .line 592
    :pswitch_5
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->f:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v4, :cond_5

    return v1

    .line 595
    :cond_5
    check-cast v2, Landroid/widget/Spinner;

    .line 599
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemTextList()Ljava/util/List;

    move-result-object v0

    .line 600
    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->l:Landroid/content/Context;

    sget v6, Lcom/cyjh/mqsdk/R$layout;->ui_show_spinner_dropdown_item:I

    invoke-direct {v4, v5, v6, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 601
    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 602
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultItemIndex()I

    move-result v0

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_6

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultItemIndex()I

    move-result v1

    .line 603
    :cond_6
    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_2

    .line 566
    :pswitch_6
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->e:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v4, :cond_7

    return v1

    .line 569
    :cond_7
    move-object v0, v2

    check-cast v0, Landroid/widget/RadioGroup;

    .line 570
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 572
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 573
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 574
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 575
    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 576
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->removeAllViews()V

    .line 578
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemTextList()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    .line 579
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 581
    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->l:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/cyjh/mqsdk/R$layout;->ui_show_radio_button:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 582
    invoke-virtual {v5, v4}, Landroid/widget/RadioButton;->setId(I)V

    .line 583
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 584
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->c()I

    move-result v6

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->c()I

    move-result v7

    invoke-virtual {v5, v1, v6, v1, v7}, Landroid/widget/RadioButton;->setPadding(IIII)V

    .line 586
    invoke-virtual {v0, v5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 588
    :cond_8
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultItemIndex()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_9

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultItemIndex()I

    move-result v1

    .line 589
    :cond_9
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_2

    .line 552
    :pswitch_7
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->h:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v4, :cond_a

    return v1

    .line 555
    :cond_a
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    .line 556
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 561
    :cond_b
    check-cast v2, Landroid/webkit/WebView;

    .line 562
    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 563
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 540
    :pswitch_8
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->g:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v4, :cond_c

    return v1

    .line 543
    :cond_c
    move-object v0, v2

    check-cast v0, Landroid/widget/ImageView;

    .line 544
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 545
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 546
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 547
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 549
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 530
    :pswitch_9
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->d:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v4, :cond_d

    return v1

    .line 533
    :cond_d
    check-cast v2, Landroid/widget/CheckBox;

    .line 534
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultCheckStatus()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 535
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 536
    invoke-virtual {v2}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 537
    invoke-virtual {v2}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_2

    .line 522
    :pswitch_a
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v4, :cond_e

    return v1

    .line 525
    :cond_e
    check-cast v2, Landroid/widget/Button;

    .line 526
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 527
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 514
    :pswitch_b
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->b:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v4, :cond_f

    return v1

    .line 517
    :cond_f
    check-cast v2, Landroid/widget/EditText;

    .line 518
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 519
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 506
    :pswitch_c
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->a:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v4, :cond_10

    return v1

    .line 509
    :cond_10
    check-cast v2, Landroid/widget/TextView;

    .line 510
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_11
    :goto_2
    return v3

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private c()I
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 96
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private c(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .locals 9

    .line 676
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 678
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 682
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SET FONT type: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getFontType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 684
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getFontType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    if-nez v2, :cond_1

    .line 687
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 690
    :cond_1
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getFontSize()I

    move-result v3

    if-gez v3, :cond_2

    const/16 v3, 0xe

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getFontSize()I

    move-result v3

    .line 692
    :goto_0
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v4, v4, v6

    if-eqz v4, :cond_3

    .line 694
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1, v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/graphics/Typeface;I)V

    .line 695
    invoke-static {v5}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 699
    :cond_3
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v4, v4, v6

    invoke-virtual {v4, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_4

    .line 702
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 706
    :cond_4
    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v7, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v6, v6, v7

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_5

    .line 708
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 712
    :cond_5
    sget-object v6, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    iget-object v7, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v8, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v7, v7, v8

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v0

    aget v0, v6, v0

    const/4 v6, 0x2

    packed-switch v0, :pswitch_data_0

    .line 737
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 727
    :pswitch_0
    check-cast v4, Landroid/widget/RadioGroup;

    .line 728
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    .line 729
    :goto_1
    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_6

    .line 731
    invoke-virtual {v4, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    .line 732
    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    int-to-float v0, v3

    .line 733
    invoke-virtual {p1, v6, v0}, Landroid/widget/RadioButton;->setTextSize(IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 722
    :pswitch_1
    check-cast v4, Landroid/widget/CheckBox;

    .line 723
    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    int-to-float p1, v3

    .line 724
    invoke-virtual {v4, v6, p1}, Landroid/widget/CheckBox;->setTextSize(IF)V

    goto :goto_2

    .line 717
    :pswitch_2
    check-cast v4, Landroid/widget/TextView;

    .line 718
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    int-to-float p1, v3

    .line 719
    invoke-virtual {v4, v6, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 740
    :cond_6
    :goto_2
    invoke-static {v5}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .line 1052
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1054
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 1058
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1061
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 1065
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    .line 1077
    :goto_0
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v2

    .line 1078
    invoke-virtual {v2, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->INT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    .line 1079
    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    .line 1080
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setIntValue(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    .line 1081
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 1082
    invoke-virtual {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 1083
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    .line 1084
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1935
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1938
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v0, v0, v2

    .line 23261
    iput-object p2, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->i:Ljava/lang/String;

    .line 23262
    iget-object p2, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->i:Ljava/lang/String;

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 23263
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 23264
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 23266
    :cond_0
    iget-object p2, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->h:I

    mul-int/lit16 v0, v0, 0xff

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1939
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, p2, p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->e()V

    return v1

    .line 1943
    :cond_1
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    return v2

    .line 1947
    :cond_2
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v3, v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    return v2

    .line 1952
    :cond_3
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->g:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne p1, v2, :cond_4

    .line 1953
    check-cast v0, Landroid/widget/ImageView;

    .line 1954
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :cond_4
    return v1
.end method

.method private d()V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 103
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 104
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 105
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a()V

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    const/4 v1, 0x1

    .line 107
    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->i:I

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    .line 110
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 111
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_1
    new-array v1, v2, [Lcom/cyjh/mobileanjian/ipc/ui/j;

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    .line 115
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->e:I

    return-void
.end method

.method private d(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .locals 5

    .line 745
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 747
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 751
    :cond_0
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 752
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    .line 754
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 757
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 761
    :cond_1
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->b:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v3, :cond_2

    .line 763
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 767
    :cond_2
    check-cast v2, Landroid/widget/EditText;

    .line 768
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEditInputType()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setInputType(I)V

    const/4 p1, 0x1

    .line 769
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    .line 1148
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1150
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 1154
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1157
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 1160
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getSolidColor()I

    move-result v0

    .line 1161
    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result v0

    .line 1162
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v2, 0xffffff

    and-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1166
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v1

    .line 1167
    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->STRING:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    .line 1168
    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    .line 1169
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setStringValue(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    .line 1170
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 1171
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1172
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    .line 1173
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private e(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .locals 7

    .line 774
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 776
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 780
    :cond_0
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 781
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v2

    .line 783
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    .line 786
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 790
    :cond_1
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 792
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 796
    :cond_2
    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v5, v5, v6

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    .line 842
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 819
    :pswitch_0
    check-cast v3, Landroid/widget/Spinner;

    .line 820
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result v0

    invoke-virtual {v3}, Landroid/widget/Spinner;->getCount()I

    move-result v4

    if-lt v0, v4, :cond_3

    .line 822
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 826
    :cond_3
    invoke-virtual {v3}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 828
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 829
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 831
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 833
    :cond_4
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-interface {v4, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 835
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->l:Landroid/content/Context;

    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_show_spinner_dropdown_item:I

    invoke-direct {p1, v0, v1, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 836
    invoke-virtual {v3, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 837
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 809
    :pswitch_1
    check-cast v3, Landroid/widget/RadioGroup;

    .line 810
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-nez p1, :cond_5

    .line 813
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 816
    :cond_5
    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 805
    :pswitch_2
    check-cast v3, Landroid/widget/CheckBox;

    .line 806
    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 801
    :pswitch_3
    check-cast v3, Landroid/widget/TextView;

    .line 802
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const/4 p1, 0x1

    .line 846
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private e(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1244
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 1247
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1248
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1250
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1251
    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v2

    aget v2, v4, v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1258
    :pswitch_0
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 1259
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    .line 1262
    :pswitch_1
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    .line 1263
    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 1266
    :pswitch_2
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 1267
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    .line 1254
    :cond_1
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1255
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1272
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private f(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .locals 8

    .line 851
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 853
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 857
    :cond_0
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 858
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getColor()Ljava/lang/String;

    move-result-object v2

    const-string v3, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    .line 860
    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 862
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    .line 863
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_1
    const-string v3, "#"

    .line 867
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 868
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 869
    :cond_2
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 870
    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result v2

    .line 873
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 875
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(I)V

    .line 876
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 880
    :cond_3
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v3, v3, v5

    invoke-virtual {v3, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_4

    .line 883
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 887
    :cond_4
    sget-object v5, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v7, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v6, v6, v7

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v0

    aget v0, v5, v0

    packed-switch v0, :pswitch_data_0

    .line 920
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 910
    :pswitch_0
    check-cast v3, Landroid/widget/Spinner;

    .line 911
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v3}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_6

    .line 913
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 900
    :pswitch_1
    check-cast v3, Landroid/widget/RadioGroup;

    .line 901
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-nez p1, :cond_5

    .line 904
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 907
    :cond_5
    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setTextColor(I)V

    goto :goto_0

    .line 896
    :pswitch_2
    check-cast v3, Landroid/widget/CheckBox;

    .line 897
    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setTextColor(I)V

    goto :goto_0

    .line 892
    :pswitch_3
    check-cast v3, Landroid/widget/TextView;

    .line 893
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 924
    :cond_6
    :goto_0
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private f(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1277
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 1280
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1282
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 1283
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1285
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1286
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1288
    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v3}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1295
    :pswitch_0
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 1296
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/Spinner;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1300
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 1303
    :pswitch_1
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    .line 1304
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1308
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 1311
    :pswitch_2
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 1312
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 1291
    :cond_2
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1292
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private g(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .locals 5

    .line 929
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 931
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 935
    :cond_0
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 936
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 939
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 943
    :cond_1
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getColor()Ljava/lang/String;

    move-result-object p1

    const-string v3, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    .line 944
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 946
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    .line 947
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_2
    const-string v1, "#"

    .line 951
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 952
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 953
    :cond_3
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 954
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result p1

    .line 955
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    const/4 v4, 0x1

    if-ne v1, v3, :cond_4

    .line 957
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 958
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 959
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->c()I

    move-result p1

    int-to-float p1, p1

    .line 960
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 961
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 962
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 965
    :cond_4
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/ui/m;->f:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v1, :cond_5

    .line 967
    invoke-virtual {v2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 969
    :cond_5
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void
.end method

.method private g(Ljava/lang/String;)V
    .locals 4

    .line 1375
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1377
    sget v0, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-direct {p0, v0, v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    .line 1378
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 1382
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, v0, v3

    .line 15260
    iget-boolean v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/k;->c:Z

    if-eqz v0, :cond_1

    .line 1384
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 1388
    :cond_1
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c()V

    .line 1389
    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    .line 1390
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    .line 1391
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_SHOW:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    .line 1392
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    .line 1393
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object p1

    .line 1394
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 1395
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 1396
    invoke-virtual {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 1397
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    .line 1398
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    .line 1399
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->b(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private h(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .locals 4

    .line 974
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 976
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 980
    :cond_0
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 981
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 984
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 988
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 989
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getAlignType()I

    move-result p1

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 990
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 992
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "set gravity ok; "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    .line 993
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void
.end method

.method private h(Ljava/lang/String;)V
    .locals 3

    .line 1416
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1418
    sget v0, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    .line 1419
    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 1423
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a()Ljava/lang/String;

    move-result-object v0

    .line 1424
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v2

    .line 1425
    invoke-virtual {v2, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->STRING:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    .line 1426
    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    .line 1427
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setStringValue(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    .line 1428
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 1429
    invoke-virtual {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 1430
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    .line 1431
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private i(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .locals 4

    .line 998
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1000
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 1004
    :cond_0
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 1005
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1008
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 1012
    :cond_1
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPadding()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    move-result-object p1

    .line 1013
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1014
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1015
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getRight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1016
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getBottom()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1017
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getTop()I

    move-result v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getRight()I

    move-result v3

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getBottom()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    const/4 p1, 0x1

    .line 1018
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void
.end method

.method private static i(Ljava/lang/String;)V
    .locals 2

    .line 1464
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    .line 1465
    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p0

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_CLOSE_CONTINUE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    .line 1466
    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p0

    .line 1467
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object p0

    .line 1468
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 1469
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1470
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 1471
    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p0

    .line 1472
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p0

    .line 1473
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/cyjh/mq/sdk/MqRunner;->b(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private j(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .locals 5

    .line 1089
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1091
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 1095
    :cond_0
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 1098
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1100
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 1104
    :cond_1
    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v3}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1128
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 1117
    :pswitch_0
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    .line 1118
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-nez p1, :cond_2

    .line 1121
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 1124
    :cond_2
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getColor()I

    move-result p1

    goto :goto_0

    .line 1113
    :pswitch_1
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p1, p1, v2

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 1114
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getColor()I

    move-result p1

    goto :goto_0

    .line 1109
    :pswitch_2
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p1, p1, v2

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1110
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getColor()I

    move-result p1

    :goto_0
    const-string v2, "%02X%02X%02X"

    const/4 v3, 0x3

    .line 1134
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1136
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v1

    .line 1137
    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->STRING:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    .line 1138
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    .line 1139
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setStringValue(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    .line 1140
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 1141
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 1142
    invoke-virtual {v0, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    .line 1143
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private j(Ljava/lang/String;)Z
    .locals 4

    .line 1478
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1480
    sget v0, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-direct {p0, v0, v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    return v1

    .line 1484
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, v0, v3

    .line 16260
    iget-boolean v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/k;->c:Z

    if-nez v0, :cond_1

    return v1

    .line 1489
    :cond_1
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->e()V

    .line 1490
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    if-ne p1, v0, :cond_3

    .line 1492
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    .line 1493
    :goto_0
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p1, p1, v0

    if-nez p1, :cond_2

    .line 1495
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    goto :goto_0

    .line 1497
    :cond_2
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    if-gez p1, :cond_3

    .line 1499
    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    :cond_3
    return v2
.end method

.method private k(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .locals 5

    .line 1178
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1180
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 1184
    :cond_0
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 1187
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1189
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 1193
    :cond_1
    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v3}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1227
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 1216
    :pswitch_0
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 1217
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/Spinner;->getCount()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 1219
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 1222
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Spinner Get pos: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1223
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 1206
    :pswitch_1
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    .line 1207
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-nez p1, :cond_3

    .line 1210
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 1213
    :cond_3
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1202
    :pswitch_2
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 1203
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1198
    :pswitch_3
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1199
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1231
    :goto_0
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v1

    .line 1232
    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->STRING:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    .line 1233
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    .line 1234
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setStringValue(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    .line 1235
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 1236
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1237
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    .line 1238
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private k(Ljava/lang/String;)V
    .locals 8

    .line 1562
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 1563
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1564
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 1565
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    const/4 v4, 0x0

    :goto_0
    const/16 v6, 0x20

    if-ge v4, v6, :cond_1

    .line 1571
    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    aget-object v6, v6, v4

    if-eqz v6, :cond_0

    .line 1573
    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    aget-object v5, v5, v4

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 1580
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "type="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "; tempIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v5, :cond_2

    .line 1584
    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_widget:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-direct {p0, v2, v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    .line 1585
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {v0, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    .line 1588
    :cond_2
    sget-object v1, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    invoke-virtual {v5}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_0

    .line 1617
    invoke-virtual {v0, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    goto/16 :goto_2

    .line 1611
    :pswitch_0
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    aget-object v1, v1, v4

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    .line 1612
    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->INT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v1

    .line 1613
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setIntValue(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    .line 1614
    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    goto :goto_2

    .line 1605
    :pswitch_1
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    aget-object v1, v1, v4

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    .line 1606
    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->INT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v1

    .line 1607
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setIntValue(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    .line 1608
    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    goto :goto_2

    .line 1599
    :pswitch_2
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    aget-object v1, v1, v4

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 1600
    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->BOOL:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v1

    .line 1601
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setBoolValue(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    .line 1602
    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    goto :goto_2

    .line 1593
    :pswitch_3
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    aget-object v1, v1, v4

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1594
    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->STRING:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v1

    .line 1595
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setStringValue(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    .line 1596
    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    .line 1621
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Ui.getValue result: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1622
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private l(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .locals 4

    .line 1436
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 1437
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getColor()Ljava/lang/String;

    move-result-object p1

    .line 1439
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 1441
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-direct {p0, p1, v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    .line 1442
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_0
    const-string v1, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    .line 1446
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1448
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array v0, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    .line 1449
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_1
    const-string v1, "#"

    .line 1453
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1454
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1455
    :cond_2
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1456
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 1457
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result p1

    .line 1458
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(I)V

    .line 1459
    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void
.end method

.method private l(Ljava/lang/String;)V
    .locals 8

    .line 1728
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1730
    sget v0, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_float:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-direct {p0, v0, v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    .line 1731
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 1735
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, v0, v3

    .line 20211
    iget-boolean v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    if-eqz v0, :cond_1

    .line 1737
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 1741
    :cond_1
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, v0, v3

    .line 21101
    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 21103
    iget-object v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->i:Ljava/lang/String;

    const/16 v5, 0x10

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->i:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 21104
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 21105
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_3

    .line 21106
    iget-object v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 21109
    :cond_2
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v6, 0x8

    .line 21110
    new-array v6, v6, [F

    iget v7, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v7, v6, v1

    iget v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v1, v6, v2

    const/4 v1, 0x2

    iget v7, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v7, v6, v1

    const/4 v1, 0x3

    iget v7, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v7, v6, v1

    const/4 v1, 0x4

    iget v7, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v7, v6, v1

    const/4 v1, 0x5

    iget v7, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v7, v6, v1

    const/4 v1, 0x6

    iget v7, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v7, v6, v1

    const/4 v1, 0x7

    iget v7, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v7, v6, v1

    .line 21111
    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 21113
    :try_start_0
    iget v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->f:I

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21117
    :catch_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_3

    .line 21118
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 21121
    :cond_3
    :goto_0
    iput-boolean v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    .line 21123
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/cyjh/mobileanjian/ipc/ui/j$1;

    invoke-direct {v4, v0, v3}, Lcom/cyjh/mobileanjian/ipc/ui/j$1;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/j;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 21191
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->a:Landroid/view/WindowManager;

    iget-object v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    iget-object v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21192
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->h:I

    mul-int/lit16 v0, v0, 0xff

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1742
    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    .line 1743
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_SHOW:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-static {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)V

    return-void
.end method

.method private m(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .locals 5

    .line 1965
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 1966
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getStrParam()Ljava/lang/String;

    move-result-object p1

    const-string v1, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    .line 1967
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1969
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array v0, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    .line 1970
    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_0
    const-string v1, "#"

    .line 1975
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1976
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1977
    :cond_1
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 1978
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result p1

    .line 1980
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    .line 1982
    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 1985
    :cond_2
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1989
    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 1992
    :cond_3
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v2, v4, :cond_4

    .line 1995
    move-object v2, v3

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1997
    :cond_4
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->a:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v0, v2, :cond_5

    .line 2000
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2003
    :cond_5
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->e()V

    const/4 p1, 0x1

    .line 2004
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void
.end method

.method private m(Ljava/lang/String;)V
    .locals 3

    .line 1748
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1750
    sget v0, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_float:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    .line 1751
    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 1755
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v0, v0, v2

    .line 21211
    iget-boolean v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    if-nez v0, :cond_1

    .line 1757
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 1766
    :cond_1
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    .line 21382
    iget-object v0, p1, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 22211
    iget-boolean v0, p1, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    if-eqz v0, :cond_2

    .line 21383
    iget-object v0, p1, Lcom/cyjh/mobileanjian/ipc/ui/j;->a:Landroid/view/WindowManager;

    iget-object v2, p1, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 21384
    iget-object v0, p1, Lcom/cyjh/mobileanjian/ipc/ui/j;->a:Landroid/view/WindowManager;

    iget-object v2, p1, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    iget-object p1, p1, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1768
    :cond_2
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void
.end method

.method private n(Ljava/lang/String;)V
    .locals 4

    .line 1785
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1787
    sget v0, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_float:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    .line 1788
    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 1792
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, v0, v3

    .line 23211
    iget-boolean v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    if-nez v0, :cond_1

    .line 1794
    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 1798
    :cond_1
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->b()V

    .line 1799
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void
.end method

.method private n(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z
    .locals 5

    .line 2081
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 2083
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2084
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doReSetView value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getCommand()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2086
    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return v2

    .line 2089
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doReSetView value: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getCommand()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2090
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2092
    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return v2

    .line 2095
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "doReSetView value: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getCommand()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2096
    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getCommand()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 2098
    :pswitch_0
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->g:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v0, v2, :cond_2

    .line 2099
    check-cast v3, Landroid/widget/ImageView;

    .line 2100
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2101
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2102
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2104
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2106
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 2107
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setY(F)V

    .line 2108
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0

    .line 2112
    :pswitch_1
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->a:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v0, v2, :cond_2

    .line 2113
    move-object v0, v3

    check-cast v0, Landroid/widget/TextView;

    .line 2114
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2115
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2116
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2118
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2119
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2120
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setX(F)V

    .line 2121
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getTop()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setY(F)V

    goto :goto_0

    .line 2125
    :pswitch_2
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v0, v2, :cond_2

    .line 2126
    move-object v0, v3

    check-cast v0, Landroid/widget/Button;

    .line 2127
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2128
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2129
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2131
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2132
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2133
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setX(F)V

    .line 2134
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getTop()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setY(F)V

    .line 2138
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->e()V

    const/4 p1, 0x1

    .line 2139
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private o(Ljava/lang/String;)V
    .locals 3

    .line 1804
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1806
    sget v0, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_float:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    .line 1807
    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 1811
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->c()V

    .line 1813
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1815
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_CLOSE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-static {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)V

    .line 1816
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void
.end method

.method private o(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z
    .locals 5

    .line 2144
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 2145
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 2151
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    return v2

    .line 2156
    :cond_1
    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2

    return v2

    .line 2160
    :cond_2
    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    goto :goto_0

    .line 2163
    :cond_3
    check-cast v3, Landroid/widget/TextView;

    .line 2164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "setFloatTextSize value: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getFontSize()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    .line 2165
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getFontSize()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v3, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2168
    :goto_0
    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->e()V

    return v2

    :catch_0
    return v2
.end method

.method private p(Ljava/lang/String;)V
    .locals 5

    .line 2010
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2011
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2014
    :try_start_0
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v1, p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const-string v1, "Left"

    .line 2015
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Top"

    .line 2016
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Width"

    .line 2017
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Height"

    .line 2018
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 2020
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 2023
    :cond_0
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2024
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyjh/mobileanjian/ipc/ui/m;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 2026
    sget v1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_widget:I

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    .line 2027
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cyjh/mq/sdk/MqRunner;->a(Ljava/lang/String;)V

    return-void

    .line 2032
    :cond_1
    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v2

    aget v2, v4, v2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    goto/16 :goto_0

    .line 2059
    :cond_2
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v2, v1

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    :try_start_1
    const-string v1, "Left"

    .line 2061
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Top"

    .line 2062
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Width"

    .line 2063
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Height"

    .line 2064
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    .line 2066
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 2047
    :cond_3
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v2, v1

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    :try_start_2
    const-string v1, "Left"

    .line 2049
    invoke-virtual {p1}, Landroid/widget/Button;->getLeft()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Top"

    .line 2050
    invoke-virtual {p1}, Landroid/widget/Button;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Text"

    .line 2051
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Width"

    .line 2052
    invoke-virtual {p1}, Landroid/widget/Button;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Height"

    .line 2053
    invoke-virtual {p1}, Landroid/widget/Button;->getHeight()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 2055
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2035
    :cond_4
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v2, v1

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    :try_start_3
    const-string v1, "Left"

    .line 2037
    invoke-virtual {p1}, Landroid/widget/TextView;->getLeft()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Top"

    .line 2038
    invoke-virtual {p1}, Landroid/widget/TextView;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Text"

    .line 2039
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Width"

    .line 2040
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Height"

    .line 2041
    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception p1

    .line 2043
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 2075
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "FWGetValue json: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2076
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cyjh/mq/sdk/MqRunner;->a(Ljava/lang/String;)V

    return-void
.end method

.method private p(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z
    .locals 5

    .line 2174
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 2175
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 2179
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    return v2

    .line 2184
    :cond_1
    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return v2

    .line 2187
    :cond_2
    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getCommand()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 2189
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doFloatSetStatus "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getVisibleStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2190
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getVisibleStatus()I

    move-result p1

    if-eqz p1, :cond_3

    .line 2198
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/16 p1, 0x8

    .line 2194
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2203
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doFloatSetStatus "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEnabledStatus()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2204
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEnabledStatus()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2207
    :goto_0
    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->e()V

    const/4 p1, 0x1

    return p1

    :catch_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private q(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z
    .locals 5

    .line 2212
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 2213
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 2217
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    return v2

    .line 2222
    :cond_1
    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v3, "false"

    .line 2225
    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getCommand()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result p1

    aget p1, v4, p1

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2227
    :pswitch_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    const-string v3, "true"

    goto :goto_0

    .line 2232
    :pswitch_1
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/m;->g:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq p1, v0, :cond_3

    .line 2233
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    .line 2235
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result p1

    const-string v0, "%6s"

    .line 2236
    new-array v1, v4, [Ljava/lang/Object;

    const v3, 0xffffff

    and-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2243
    :pswitch_2
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string v3, "true"

    .line 2248
    :cond_3
    :goto_0
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/cyjh/mq/sdk/MqRunner;->a(Ljava/lang/String;)V

    return v4

    :catch_0
    return v2

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private r(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z
    .locals 5

    .line 2253
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 2254
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2257
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getIntParam()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->setFloatLeft(I)V

    goto :goto_0

    .line 2259
    :cond_0
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2263
    :cond_1
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v3, v1

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    return v2

    .line 2268
    :cond_2
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    .line 2269
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->a:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    .line 2270
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->g:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v0, v2, :cond_4

    .line 2272
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "view.setX "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getIntParam()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2274
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getIntParam()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setX(F)V

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private s(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z
    .locals 5

    .line 2282
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 2283
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2286
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getIntParam()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->setFloatTop(I)V

    goto :goto_0

    .line 2288
    :cond_0
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2292
    :cond_1
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v3, v1

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    return v2

    .line 2297
    :cond_2
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    .line 2298
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->a:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    .line 2299
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->g:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v0, v2, :cond_4

    .line 2301
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "view.setY "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getIntParam()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2303
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getIntParam()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setY(F)V

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private t(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z
    .locals 5

    .line 2310
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 2311
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2314
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getIntParam()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->setFloatWidth(I)V

    goto :goto_0

    .line 2316
    :cond_0
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2320
    :cond_1
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v3, v1

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    return v2

    .line 2325
    :cond_2
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    .line 2326
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->a:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    .line 2327
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->g:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v0, v2, :cond_4

    .line 2329
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2330
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getIntParam()I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2331
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private u(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z
    .locals 5

    .line 2338
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 2339
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2342
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getIntParam()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->setFloatHeight(I)V

    goto :goto_0

    .line 2344
    :cond_0
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2348
    :cond_1
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v3, v1

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    return v2

    .line 2353
    :cond_2
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    .line 2354
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->a:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    .line 2355
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->g:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v0, v2, :cond_4

    .line 2357
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2358
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getIntParam()I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2359
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private v(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z
    .locals 5

    .line 2366
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 2367
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setFloatText : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getStrParam()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2368
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 2374
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    return v2

    .line 2379
    :cond_1
    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2

    return v2

    .line 2383
    :cond_2
    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    goto :goto_0

    .line 2385
    :cond_3
    check-cast v3, Landroid/widget/Button;

    .line 2386
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getStrParam()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2389
    :cond_4
    check-cast v3, Landroid/widget/TextView;

    .line 2390
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getStrParam()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2393
    :goto_0
    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->e()V

    return v2

    :catch_0
    return v2
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/16 v0, 0x1f

    :goto_0
    if-lez v0, :cond_2

    .line 1510
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 17260
    iget-boolean v2, v1, Lcom/cyjh/mobileanjian/ipc/ui/k;->c:Z

    if-eqz v2, :cond_0

    .line 1513
    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->e()V

    .line 1516
    :cond_0
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 18211
    iget-boolean v2, v1, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    if-eqz v2, :cond_1

    .line 1519
    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->c()V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .locals 12

    .line 122
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v6

    .line 124
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getCommand()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    move-result-object v0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "command: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    sget-object v1, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/16 v3, 0x64

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    .line 471
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->v(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z

    move-result v8

    goto/16 :goto_9

    .line 467
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->u(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z

    move-result v8

    goto/16 :goto_9

    .line 463
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->t(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z

    move-result v8

    goto/16 :goto_9

    .line 459
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->s(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z

    move-result v8

    goto/16 :goto_9

    .line 13253
    :pswitch_4
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 13254
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 13257
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getIntParam()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->setFloatLeft(I)V

    goto/16 :goto_9

    .line 13259
    :cond_0
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    :goto_0
    const/4 v8, 0x0

    goto/16 :goto_9

    .line 13263
    :cond_1
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v2, v1

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 13268
    :cond_2
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    .line 13269
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->a:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    .line 13270
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->g:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v0, v2, :cond_52

    .line 13272
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "view.setX "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getIntParam()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13274
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getIntParam()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_9

    .line 451
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->q(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z

    move-result v8

    goto/16 :goto_9

    .line 446
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->p(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z

    move-result v8

    goto/16 :goto_9

    .line 442
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->o(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z

    move-result v8

    goto/16 :goto_9

    .line 439
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->n(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z

    return-void

    .line 13010
    :pswitch_9
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 13011
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13014
    :try_start_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "Left"

    .line 13015
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Top"

    .line 13016
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Width"

    .line 13017
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Height"

    .line 13018
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .line 13020
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 13023
    :cond_4
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 13024
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-nez v1, :cond_5

    .line 13026
    sget v0, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_widget:I

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v6, v1, v9

    invoke-direct {p0, v0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    .line 13027
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 13032
    :cond_5
    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-eq v1, v8, :cond_8

    if-eq v1, v7, :cond_7

    const/4 v2, 0x7

    if-eq v1, v2, :cond_6

    goto/16 :goto_1

    .line 13059
    :cond_6
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v0, v6}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    :try_start_1
    const-string v1, "Left"

    .line 13061
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Top"

    .line 13062
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Width"

    .line 13063
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Height"

    .line 13064
    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    .line 13066
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 13047
    :cond_7
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v0, v6}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    :try_start_2
    const-string v1, "Left"

    .line 13049
    invoke-virtual {v0}, Landroid/widget/Button;->getLeft()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Top"

    .line 13050
    invoke-virtual {v0}, Landroid/widget/Button;->getTop()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Text"

    .line 13051
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Width"

    .line 13052
    invoke-virtual {v0}, Landroid/widget/Button;->getWidth()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Height"

    .line 13053
    invoke-virtual {v0}, Landroid/widget/Button;->getHeight()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 13055
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 13035
    :cond_8
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v0, v6}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :try_start_3
    const-string v1, "Left"

    .line 13037
    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Top"

    .line 13038
    invoke-virtual {v0}, Landroid/widget/TextView;->getTop()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Text"

    .line 13039
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Width"

    .line 13040
    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Height"

    .line 13041
    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    .line 13043
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 13075
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FWGetValue json: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13076
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 12965
    :pswitch_a
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 12966
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getStrParam()Ljava/lang/String;

    move-result-object p1

    const-string v1, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    .line 12967
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 12969
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array v0, v9, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    .line 12970
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_9
    const-string v1, "#"

    .line 12975
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 12976
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12977
    :cond_a
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 12978
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result p1

    .line 12980
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_b

    .line 12982
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 12985
    :cond_b
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_c

    .line 12989
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 12992
    :cond_c
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v3, v4, :cond_d

    .line 12995
    move-object v3, v2

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 12997
    :cond_d
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->a:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v0, v3, :cond_e

    .line 13000
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13003
    :cond_e
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->e()V

    .line 13004
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 11748
    :pswitch_b
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_f

    .line 11750
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_float:I

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v6, v0, v9

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    .line 11751
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 11755
    :cond_f
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->d()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 11766
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    .line 12382
    iget-object v0, p1, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 12383
    iget-object v0, p1, Lcom/cyjh/mobileanjian/ipc/ui/j;->a:Landroid/view/WindowManager;

    iget-object v1, p1, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 12384
    iget-object v0, p1, Lcom/cyjh/mobileanjian/ipc/ui/j;->a:Landroid/view/WindowManager;

    iget-object v1, p1, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    iget-object p1, p1, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11768
    :cond_10
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 415
    :pswitch_c
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object v0

    .line 416
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    if-eqz v1, :cond_52

    .line 418
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->m:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->b()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getLeft()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getTop()I

    invoke-virtual {v1, v6, v2, v3, v4}, Lcom/cyjh/mobileanjian/ipc/ui/g;->c(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/ImageView;

    move-result-object v1

    .line 420
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->g:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Landroid/view/View;)V

    .line 422
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v2, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 424
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getTop()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setY(F)V

    goto/16 :goto_9

    .line 401
    :pswitch_d
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object v0

    .line 402
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    if-eqz v1, :cond_52

    .line 404
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->m:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->b()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getLeft()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getTop()I

    .line 11152
    iget-object v1, v1, Lcom/cyjh/mobileanjian/ipc/ui/g;->a:Landroid/view/LayoutInflater;

    sget v7, Lcom/cyjh/mqsdk/R$layout;->ui_float_text_view:I

    invoke-virtual {v1, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 11154
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 11155
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11156
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-eq v3, v5, :cond_11

    if-eq v4, v5, :cond_11

    .line 11159
    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 11160
    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 11164
    :cond_11
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->a:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Landroid/view/View;)V

    .line 407
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v2, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setX(F)V

    .line 409
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getTop()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setY(F)V

    goto/16 :goto_9

    .line 381
    :pswitch_e
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object v0

    .line 382
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    if-eqz v1, :cond_52

    .line 384
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->m:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->b()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v10

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getLeft()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getTop()I

    .line 10193
    iget-object v1, v1, Lcom/cyjh/mobileanjian/ipc/ui/g;->a:Landroid/view/LayoutInflater;

    sget v11, Lcom/cyjh/mqsdk/R$layout;->ui_float_button:I

    invoke-virtual {v1, v11, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 10194
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 10195
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 10196
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setAllCaps(Z)V

    if-nez v7, :cond_12

    if-nez v10, :cond_12

    .line 10199
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_2

    .line 10203
    :cond_12
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 10206
    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    new-instance v2, Lcom/cyjh/mobileanjian/ipc/ui/h$1;

    invoke-direct {v2, p0, v6}, Lcom/cyjh/mobileanjian/ipc/ui/h$1;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/h;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Landroid/view/View;)V

    .line 394
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v2, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setX(F)V

    .line 396
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getTop()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setY(F)V

    goto/16 :goto_9

    .line 376
    :pswitch_f
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getStrParam()Ljava/lang/String;

    move-result-object p1

    .line 8935
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 8938
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    .line 9261
    iput-object p1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->i:Ljava/lang/String;

    .line 9262
    iget-object p1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 9263
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_13

    .line 9264
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 9266
    :cond_13
    iget-object p1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->h:I

    mul-int/lit16 v0, v0, 0xff

    div-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 8939
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->e()V

    goto/16 :goto_9

    .line 8943
    :cond_14
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_15

    goto/16 :goto_0

    .line 8947
    :cond_15
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v0, v6}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    .line 8952
    :cond_16
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->g:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v1, v2, :cond_52

    .line 8953
    check-cast v0, Landroid/widget/ImageView;

    .line 8954
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto/16 :goto_9

    .line 372
    :pswitch_10
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getStrParam()Ljava/lang/String;

    move-result-object p1

    const-string v0, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    .line 8887
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 8889
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array v0, v9, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    .line 8890
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_17
    const-string v0, "#"

    .line 8894
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 8895
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8897
    :cond_18
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 8898
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result p1

    .line 8899
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 8901
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->b(I)V

    .line 8902
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->e()V

    goto :goto_3

    .line 8904
    :cond_19
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1a

    .line 8906
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 8909
    :cond_1a
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v0, v6}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 8912
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 8915
    :cond_1b
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v1, v3, :cond_1c

    .line 8917
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 8918
    new-array v2, v2, [F

    fill-array-data v2, :array_0

    .line 8919
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 8920
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 8921
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 8924
    :cond_1c
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->f:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v1, v2, :cond_1d

    .line 8926
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8930
    :cond_1d
    :goto_3
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 368
    :pswitch_11
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getIntParam()I

    move-result p1

    .line 8871
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 8873
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_float:I

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v6, v0, v9

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    .line 8874
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 8878
    :cond_1e
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(I)V

    .line 8879
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->e()V

    .line 8880
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 364
    :pswitch_12
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getIntParam()I

    move-result p1

    .line 8821
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 8823
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_float:I

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v6, v0, v9

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    .line 8824
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 8828
    :cond_1f
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->setOpacity(I)V

    .line 8866
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 8804
    :pswitch_13
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_20

    .line 8806
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_float:I

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v6, v0, v9

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    .line 8807
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 8811
    :cond_20
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->c()V

    .line 8813
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8815
    sget-object p1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_CLOSE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-static {v6, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)V

    .line 8816
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 8785
    :pswitch_14
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_21

    .line 8787
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_float:I

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v6, v0, v9

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    .line 8788
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 8792
    :cond_21
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->d()Z

    move-result p1

    if-nez p1, :cond_22

    .line 8794
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 8798
    :cond_22
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->b()V

    .line 8799
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 352
    :pswitch_15
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getBoolParam()Z

    move-result p1

    .line 7771
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_23

    .line 7773
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_float:I

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v6, v0, v9

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    .line 7774
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 7779
    :cond_23
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    .line 8215
    iput-boolean p1, v0, Lcom/cyjh/mobileanjian/ipc/ui/j;->e:Z

    .line 7780
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 7728
    :pswitch_16
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_24

    .line 7730
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_float:I

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v6, v0, v9

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    .line 7731
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 7735
    :cond_24
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->d()Z

    move-result p1

    if-eqz p1, :cond_25

    .line 7737
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 7741
    :cond_25
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a()V

    .line 7742
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    .line 7743
    sget-object p1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_SHOW:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-static {v6, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)V

    return-void

    .line 344
    :pswitch_17
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getTop()I

    move-result v3

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Ljava/lang/String;IIII)V

    goto/16 :goto_9

    .line 6998
    :pswitch_18
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_26

    .line 7000
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 7004
    :cond_26
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 7005
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_27

    .line 7008
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 7012
    :cond_27
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPadding()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    move-result-object p1

    .line 7013
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7014
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7015
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getRight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7016
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getBottom()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7017
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getTop()I

    move-result v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getRight()I

    move-result v3

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getBottom()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 7018
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 6974
    :pswitch_19
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_28

    .line 6976
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 6980
    :cond_28
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 6981
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_29

    .line 6984
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 6988
    :cond_29
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 6989
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getAlignType()I

    move-result p1

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 6990
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6992
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "set gravity ok; "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6993
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 6089
    :pswitch_1a
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v2

    if-nez v0, :cond_2a

    .line 6091
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 6095
    :cond_2a
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 6098
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2b

    .line 6100
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 6104
    :cond_2b
    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v3}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 6128
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 6117
    :pswitch_1b
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    .line 6118
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-nez p1, :cond_2c

    .line 6121
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 6124
    :cond_2c
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getColor()I

    move-result p1

    goto :goto_4

    .line 6113
    :pswitch_1c
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p1, p1, v2

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 6114
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getColor()I

    move-result p1

    goto :goto_4

    .line 6109
    :pswitch_1d
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p1, p1, v2

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 6110
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getColor()I

    move-result p1

    :goto_4
    const-string v2, "%02X%02X%02X"

    .line 6134
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6136
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v1

    .line 6137
    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->STRING:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    .line 6138
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    .line 6139
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setStringValue(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    .line 6140
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 6141
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 6142
    invoke-virtual {v0, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    .line 6143
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    .line 6052
    :pswitch_1e
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p1, p1, v0

    if-nez p1, :cond_2d

    .line 6054
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 6058
    :cond_2d
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p1, p1, v0

    invoke-virtual {p1, v6}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2e

    .line 6061
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 6065
    :cond_2e
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2f

    const/4 v0, 0x4

    if-eq p1, v0, :cond_31

    if-eq p1, v2, :cond_30

    :cond_2f
    const/4 v1, 0x1

    goto :goto_5

    :cond_30
    const/4 v1, 0x3

    .line 6077
    :cond_31
    :goto_5
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    .line 6078
    invoke-virtual {p1, v6}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->INT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    .line 6079
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    .line 6080
    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setIntValue(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    .line 6081
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 6082
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 6083
    invoke-virtual {v0, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    .line 6084
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    .line 6023
    :pswitch_1f
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p1, p1, v0

    if-nez p1, :cond_32

    .line 6025
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 6029
    :cond_32
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p1, p1, v0

    invoke-virtual {p1, v6}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_33

    .line 6032
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 6035
    :cond_33
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    .line 6036
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->b:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v1, v2, :cond_34

    .line 6038
    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocusable()Z

    move-result v0

    .line 6040
    :cond_34
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    .line 6041
    invoke-virtual {p1, v6}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->BOOL:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    .line 6042
    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    .line 6043
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setBoolValue(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    .line 6044
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 6045
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 6046
    invoke-virtual {v0, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    .line 6047
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    .line 318
    :pswitch_20
    invoke-direct {p0, v6}, Lcom/cyjh/mobileanjian/ipc/ui/h;->k(Ljava/lang/String;)V

    return-void

    .line 5929
    :pswitch_21
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_35

    .line 5931
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 5935
    :cond_35
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 5936
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_36

    .line 5939
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 5943
    :cond_36
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getColor()Ljava/lang/String;

    move-result-object p1

    const-string v2, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    .line 5944
    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 5946
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array v0, v9, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    .line 5947
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_37
    const-string v2, "#"

    .line 5951
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 5952
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5953
    :cond_38
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 5954
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result p1

    .line 5955
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v2, v3, :cond_39

    .line 5957
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 5958
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 5959
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->c()I

    move-result p1

    int-to-float p1, p1

    .line 5960
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 5961
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 5965
    :cond_39
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->f:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v2, :cond_3a

    .line 5967
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5969
    :cond_3a
    :goto_6
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 5851
    :pswitch_22
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_3b

    .line 5853
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 5857
    :cond_3b
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 5858
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getColor()Ljava/lang/String;

    move-result-object v1

    const-string v2, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    .line 5860
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 5862
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array v0, v9, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    .line 5863
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_3c
    const-string v2, "#"

    .line 5867
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 5868
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5869
    :cond_3d
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 5870
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result v1

    .line 5873
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 5875
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(I)V

    goto :goto_7

    .line 5880
    :cond_3e
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_3f

    .line 5883
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 5887
    :cond_3f
    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_2

    .line 5920
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 5910
    :pswitch_23
    check-cast v2, Landroid/widget/Spinner;

    .line 5911
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v2}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_41

    .line 5913
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 5900
    :pswitch_24
    check-cast v2, Landroid/widget/RadioGroup;

    .line 5901
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-nez p1, :cond_40

    .line 5904
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 5907
    :cond_40
    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    goto :goto_7

    .line 5896
    :pswitch_25
    check-cast v2, Landroid/widget/CheckBox;

    .line 5897
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    goto :goto_7

    .line 5892
    :pswitch_26
    check-cast v2, Landroid/widget/TextView;

    .line 5893
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5924
    :cond_41
    :goto_7
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 5178
    :pswitch_27
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_42

    .line 5180
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 5184
    :cond_42
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 5187
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_43

    .line 5189
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 5193
    :cond_43
    sget-object v1, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3

    .line 5227
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 5216
    :pswitch_28
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 5217
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/Spinner;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_44

    .line 5219
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 5222
    :cond_44
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Spinner Get pos: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5223
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_8

    .line 5206
    :pswitch_29
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 5207
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-nez p1, :cond_45

    .line 5210
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 5213
    :cond_45
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 5202
    :pswitch_2a
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 5203
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 5198
    :pswitch_2b
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 5199
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5231
    :goto_8
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v1

    .line 5232
    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->STRING:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    .line 5233
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    .line 5234
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setStringValue(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    .line 5235
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 5236
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 5237
    invoke-virtual {v0, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    .line 5238
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    .line 4745
    :pswitch_2c
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_46

    .line 4747
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 4751
    :cond_46
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 4752
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    .line 4754
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_47

    .line 4757
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 4761
    :cond_47
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->b:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v2, :cond_48

    .line 4763
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 4767
    :cond_48
    check-cast v1, Landroid/widget/EditText;

    .line 4768
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEditInputType()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 4769
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 302
    :pswitch_2d
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->c(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V

    return-void

    .line 299
    :pswitch_2e
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->e(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V

    return-void

    .line 4654
    :pswitch_2f
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 4658
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    goto/16 :goto_9

    .line 4662
    :cond_49
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p1, p1, v0

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4a

    .line 4664
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    goto/16 :goto_9

    .line 4668
    :cond_4a
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p1, p1, v0

    invoke-virtual {p1, v6}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    .line 4669
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 4670
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 4671
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_9

    .line 293
    :pswitch_30
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->b(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z

    move-result v8

    goto/16 :goto_9

    .line 275
    :pswitch_31
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_52

    .line 277
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    goto/16 :goto_9

    .line 269
    :pswitch_32
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_52

    .line 271
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Ljava/lang/String;I)V

    goto/16 :goto_9

    .line 260
    :pswitch_33
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_52

    .line 262
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->m:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->b()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemTextList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultItemIndex()I

    move-result v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    invoke-virtual {v0, v6, v1, v2}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;Ljava/util/List;I)Landroid/widget/Spinner;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->f:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto/16 :goto_9

    .line 251
    :pswitch_34
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_52

    .line 253
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->m:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->b()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;IILjava/lang/String;)Landroid/webkit/WebView;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->h:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 241
    :pswitch_35
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_52

    .line 243
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->m:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(ILjava/lang/String;IILjava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->g:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 232
    :pswitch_36
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_52

    .line 234
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->m:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->b()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultCheckStatus()Z

    move-result v5

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;Ljava/lang/String;IIZ)Landroid/widget/CheckBox;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->d:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 223
    :pswitch_37
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_52

    .line 225
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->m:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->b()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemTextList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultItemIndex()I

    move-result v3

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v5

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;Ljava/util/List;III)Landroid/widget/RadioGroup;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->e:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 214
    :pswitch_38
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_52

    .line 216
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->m:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->b()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v3

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/g;->b(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/Button;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 205
    :pswitch_39
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_52

    .line 207
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->m:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->b()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v3

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/g;->d(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/EditText;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->b:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 210
    new-instance p1, Lcom/cyjh/mobileanjian/ipc/ui/h$a;

    invoke-direct {p1, p0, v6}, Lcom/cyjh/mobileanjian/ipc/ui/h$a;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/h;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_9

    .line 197
    :pswitch_3a
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_52

    .line 199
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->m:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->b()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v3

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->a:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 187
    :pswitch_3b
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_52

    .line 190
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->m:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->b()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/cyjh/mobileanjian/ipc/ui/g;->b(Ljava/lang/String;II)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->i:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 4436
    :pswitch_3c
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 4437
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getColor()Ljava/lang/String;

    move-result-object p1

    .line 4439
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4b

    .line 4441
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v0, v1, v9

    invoke-direct {p0, p1, v1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    .line 4442
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_4b
    const-string v1, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    .line 4446
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 4448
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array v0, v9, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    .line 4449
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :cond_4c
    const-string v1, "#"

    .line 4453
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 4454
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4455
    :cond_4d
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4456
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 4457
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result p1

    .line 4458
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(I)V

    .line 4459
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 4416
    :pswitch_3d
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4e

    .line 4418
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v6, v0, v9

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    .line 4419
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 4423
    :cond_4e
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a()Ljava/lang/String;

    move-result-object p1

    .line 4424
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    .line 4425
    invoke-virtual {v0, v6}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->STRING:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    .line 4426
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    .line 4427
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setStringValue(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    .line 4428
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 4429
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 4430
    invoke-virtual {v0, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    .line 4431
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    .line 176
    :pswitch_3e
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object p1

    .line 4404
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4f

    .line 4406
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v6, v0, v9

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4410
    :cond_4f
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 169
    :pswitch_3f
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_52

    .line 171
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object v0, v0, v1

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->b()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p1

    invoke-virtual {v0, v6, v1, v2, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_9

    .line 166
    :pswitch_40
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a()V

    goto/16 :goto_9

    .line 163
    :pswitch_41
    invoke-direct {p0, v6}, Lcom/cyjh/mobileanjian/ipc/ui/h;->j(Ljava/lang/String;)Z

    move-result v8

    goto/16 :goto_9

    .line 3464
    :pswitch_42
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    .line 3465
    invoke-virtual {p1, v6}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_CLOSE_CONTINUE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    .line 3466
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    .line 3467
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object p1

    .line 3468
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 3469
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 3470
    invoke-virtual {v0, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 3471
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    .line 3472
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    .line 3473
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->b(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_9

    .line 3375
    :pswitch_43
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_50

    .line 3377
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v6, v0, v9

    invoke-direct {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(I[Ljava/lang/Object;)V

    .line 3378
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 3382
    :cond_50
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->d()Z

    move-result p1

    if-eqz p1, :cond_51

    .line 3384
    invoke-static {v9}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    .line 3388
    :cond_51
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c()V

    .line 3389
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    .line 3390
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    .line 3391
    invoke-virtual {p1, v6}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_SHOW:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    .line 3392
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    .line 3393
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object p1

    .line 3394
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 3395
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 3396
    invoke-virtual {v0, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 3397
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    .line 3398
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    .line 3399
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->b(Lcom/google/protobuf/ByteString;)V

    return-void

    .line 154
    :pswitch_44
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p1

    .line 3321
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    add-int/2addr v1, v8

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    .line 3322
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->m:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {v3, v6, v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;II)Lcom/cyjh/mobileanjian/ipc/ui/k;

    move-result-object p1

    aput-object p1, v1, v2

    .line 3323
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->n:Ljava/util/HashMap;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3325
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, p1, v0

    .line 3327
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p1, p1, v0

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/ui/h$2;

    invoke-direct {v0, p0, v6}, Lcom/cyjh/mobileanjian/ipc/ui/h$2;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/h;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Landroid/view/View$OnClickListener;)V

    .line 3344
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    aget-object p1, p1, v0

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/ui/h$3;

    invoke-direct {v0, p0, v6}, Lcom/cyjh/mobileanjian/ipc/ui/h$3;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/h;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View$OnClickListener;)V

    goto :goto_9

    .line 144
    :pswitch_45
    :try_start_4
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->f(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_9

    :catch_4
    move-exception p1

    .line 150
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_9

    :catch_5
    move-exception p1

    .line 147
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_9

    .line 132
    :pswitch_46
    :try_start_5
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->e(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_9

    :catch_6
    move-exception p1

    .line 138
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_9

    :catch_7
    move-exception p1

    .line 135
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 475
    :cond_52
    :goto_9
    :pswitch_47
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_27
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1a
        :pswitch_47
        :pswitch_19
        :pswitch_47
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
    .end packed-switch

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1532
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    .line 1533
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_CLICK:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    .line 1534
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    .line 1535
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object p1

    .line 1537
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 1538
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 1539
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 1540
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    .line 1541
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    .line 1542
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->b(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1628
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p2

    .line 1629
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    .line 1630
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setEventArgs(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    sget-object p2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_CLICK:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    .line 1631
    invoke-virtual {p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    .line 1632
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object p1

    .line 1634
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p2

    sget-object p3, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 1635
    invoke-virtual {p2, p3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p2

    .line 1636
    invoke-virtual {p2, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 1637
    invoke-virtual {p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    .line 1638
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    .line 1639
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/cyjh/mq/sdk/MqRunner;->b(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

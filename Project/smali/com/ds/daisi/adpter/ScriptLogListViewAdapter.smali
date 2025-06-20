.class public Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ScriptLogListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/adpter/ScriptLogListViewAdapter$OnCheckedChangeListener;,
        Lcom/ds/daisi/adpter/ScriptLogListViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private appContext:Lcom/ds/daisi/AppContext;

.field private commonLog:Lcom/ds/daisi/log/CommonLog;

.field private context:Landroid/content/Context;

.field private isManage:Z

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private scriptLogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ds/daisi/entity/ScriptLog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/ds/daisi/entity/ScriptLog;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    new-instance v0, Lcom/ds/daisi/log/CommonLog;

    invoke-direct {v0}, Lcom/ds/daisi/log/CommonLog;-><init>()V

    iput-object v0, p0, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;->commonLog:Lcom/ds/daisi/log/CommonLog;

    .line 32
    iput-object p1, p0, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;->context:Landroid/content/Context;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/ds/daisi/AppContext;

    iput-object v0, p0, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;->appContext:Lcom/ds/daisi/AppContext;

    .line 34
    iput-object p2, p0, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;->scriptLogList:Ljava/util/ArrayList;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;->scriptLogList:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;->scriptLogList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;->scriptLogList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 58
    iget-object p2, p0, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f04007a

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 60
    new-instance p3, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter$ViewHolder;

    invoke-direct {p3}, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter$ViewHolder;-><init>()V

    const v0, 0x7f1001c3

    .line 61
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter$ViewHolder;->tvSize:Landroid/widget/TextView;

    const v0, 0x7f1001c4

    .line 62
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    const v0, 0x7f1001c5

    .line 63
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p3, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter$ViewHolder;->cbSelect:Landroid/widget/CheckBox;

    const v0, 0x7f1001c6

    .line 64
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter$ViewHolder;->imgArrow:Landroid/widget/ImageView;

    .line 66
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter$ViewHolder;

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;->scriptLogList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ds/daisi/entity/ScriptLog;

    .line 73
    iget-boolean v1, p0, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;->isManage:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p3, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter$ViewHolder;->cbSelect:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 75
    iget-object v1, p3, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter$ViewHolder;->imgArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 78
    :cond_1
    iget-object v1, p3, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter$ViewHolder;->cbSelect:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 79
    iget-object v1, p3, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter$ViewHolder;->imgArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    :goto_1
    iget-object v1, p3, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter$ViewHolder;->tvSize:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ds/daisi/entity/ScriptLog;->getSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v1, p3, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ds/daisi/entity/ScriptLog;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, p3, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter$ViewHolder;->cbSelect:Landroid/widget/CheckBox;

    new-instance v2, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter$OnCheckedChangeListener;

    invoke-direct {v2, p0, p1}, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter$OnCheckedChangeListener;-><init>(Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 85
    iget-object p1, p3, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter$ViewHolder;->cbSelect:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/ds/daisi/entity/ScriptLog;->isSelect()Z

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-object p2
.end method

.method public isManage()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;->isManage:Z

    return v0
.end method

.method public setManage(Z)V
    .locals 0

    .line 119
    iput-boolean p1, p0, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;->isManage:Z

    return-void
.end method

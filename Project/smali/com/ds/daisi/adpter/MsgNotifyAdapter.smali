.class public Lcom/ds/daisi/adpter/MsgNotifyAdapter;
.super Landroid/widget/BaseAdapter;
.source "MsgNotifyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;
    }
.end annotation


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyjh/share/bean/NotifyMsgBean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/cyjh/share/bean/NotifyMsgBean;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/ds/daisi/adpter/MsgNotifyAdapter;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/ds/daisi/adpter/MsgNotifyAdapter;->data:Ljava/util/List;

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/adpter/MsgNotifyAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/ds/daisi/adpter/MsgNotifyAdapter;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ds/daisi/adpter/MsgNotifyAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/ds/daisi/adpter/MsgNotifyAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/ds/daisi/adpter/MsgNotifyAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/ds/daisi/adpter/MsgNotifyAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/ds/daisi/adpter/MsgNotifyAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    .line 57
    iget-object p2, p0, Lcom/ds/daisi/adpter/MsgNotifyAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f040034

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 58
    new-instance p3, Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;

    invoke-direct {p3, p0}, Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;-><init>(Lcom/ds/daisi/adpter/MsgNotifyAdapter;)V

    const v0, 0x7f1000d9

    .line 59
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;->access$002(Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f1000da

    .line 60
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;->access$102(Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f1000db

    .line 61
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;->access$202(Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f1000dc

    .line 62
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p3, v0}, Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;->access$302(Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 63
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;

    .line 67
    :goto_0
    invoke-static {p3}, Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;->access$000(Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ds/daisi/adpter/MsgNotifyAdapter;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyjh/share/bean/NotifyMsgBean;

    iget-object v1, v1, Lcom/cyjh/share/bean/NotifyMsgBean;->NoticeTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-static {p3}, Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;->access$100(Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ds/daisi/adpter/MsgNotifyAdapter;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyjh/share/bean/NotifyMsgBean;

    iget-object v1, v1, Lcom/cyjh/share/bean/NotifyMsgBean;->NoticeTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/ds/daisi/adpter/MsgNotifyAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/share/bean/NotifyMsgBean;

    iget-object v0, v0, Lcom/cyjh/share/bean/NotifyMsgBean;->DescriptionType:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 70
    invoke-static {p3}, Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;->access$300(Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    invoke-static {p3}, Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;->access$200(Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    invoke-static {p3}, Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;->access$200(Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/ds/daisi/adpter/MsgNotifyAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/share/bean/NotifyMsgBean;

    iget-object p1, p1, Lcom/cyjh/share/bean/NotifyMsgBean;->NoticeDescription:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/ds/daisi/adpter/MsgNotifyAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/share/bean/NotifyMsgBean;

    iget-object v0, v0, Lcom/cyjh/share/bean/NotifyMsgBean;->DescriptionType:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    invoke-static {p3}, Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;->access$300(Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    invoke-static {p3}, Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;->access$200(Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/ds/daisi/adpter/MsgNotifyAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/ds/daisi/adpter/MsgNotifyAdapter;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/share/bean/NotifyMsgBean;

    iget-object p1, p1, Lcom/cyjh/share/bean/NotifyMsgBean;->NoticeDescription:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    const v0, 0x7f0200e1

    .line 78
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 79
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 80
    invoke-static {p3}, Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;->access$300(Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;)Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    :cond_2
    :goto_1
    return-object p2
.end method

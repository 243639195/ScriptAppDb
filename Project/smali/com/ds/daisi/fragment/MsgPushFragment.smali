.class public Lcom/ds/daisi/fragment/MsgPushFragment;
.super Lcom/ds/daisi/fragment/BaseFragement;
.source "MsgPushFragment.java"


# instance fields
.field private mAdapter:Lcom/ds/daisi/adpter/MsgNotifyAdapter;

.field private mDataMsgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyjh/share/bean/NotifyMsgBean;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mTvNoMsg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/ds/daisi/fragment/BaseFragement;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ds/daisi/fragment/MsgPushFragment;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/ds/daisi/fragment/MsgPushFragment;->mDataMsgList:Ljava/util/List;

    return-object p0
.end method

.method private initEvent()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/ds/daisi/fragment/MsgPushFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/ds/daisi/fragment/MsgPushFragment$1;

    invoke-direct {v1, p0}, Lcom/ds/daisi/fragment/MsgPushFragment$1;-><init>(Lcom/ds/daisi/fragment/MsgPushFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f100185

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ds/daisi/fragment/MsgPushFragment;->mListView:Landroid/widget/ListView;

    const v0, 0x7f100186

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ds/daisi/fragment/MsgPushFragment;->mTvNoMsg:Landroid/widget/TextView;

    .line 90
    new-instance p1, Lcom/ds/daisi/adpter/MsgNotifyAdapter;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/MsgPushFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ds/daisi/fragment/MsgPushFragment;->mDataMsgList:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lcom/ds/daisi/adpter/MsgNotifyAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/ds/daisi/fragment/MsgPushFragment;->mAdapter:Lcom/ds/daisi/adpter/MsgNotifyAdapter;

    return-void
.end method

.method private isShowView()V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/ds/daisi/fragment/MsgPushFragment;->mDataMsgList:Ljava/util/List;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ds/daisi/fragment/MsgPushFragment;->mDataMsgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/ds/daisi/fragment/MsgPushFragment;->mTvNoMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/ds/daisi/fragment/MsgPushFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/ds/daisi/fragment/MsgPushFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ds/daisi/fragment/MsgPushFragment;->mAdapter:Lcom/ds/daisi/adpter/MsgNotifyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/fragment/MsgPushFragment;->mTvNoMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/ds/daisi/fragment/MsgPushFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static newInstance(Ljava/util/ArrayList;)Lcom/ds/daisi/fragment/MsgPushFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/cyjh/share/bean/NotifyMsgBean;",
            ">;)",
            "Lcom/ds/daisi/fragment/MsgPushFragment;"
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/ds/daisi/fragment/MsgPushFragment;

    invoke-direct {v0}, Lcom/ds/daisi/fragment/MsgPushFragment;-><init>()V

    .line 55
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "msgData"

    .line 56
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 57
    invoke-virtual {v0, v1}, Lcom/ds/daisi/fragment/MsgPushFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getFragmentLayoutId()I
    .locals 1

    const v0, 0x7f040067

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 95
    invoke-super {p0}, Lcom/ds/daisi/fragment/BaseFragement;->onDestroy()V

    .line 96
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onMessageMainThread(Lcom/ds/daisi/entity/MsgItem;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 114
    invoke-virtual {p1}, Lcom/ds/daisi/entity/MsgItem;->getMsgType()I

    move-result p1

    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/fragment/MsgPushFragment;->mAdapter:Lcom/ds/daisi/adpter/MsgNotifyAdapter;

    invoke-virtual {p1}, Lcom/ds/daisi/adpter/MsgNotifyAdapter;->clearData()V

    .line 118
    iget-object p1, p0, Lcom/ds/daisi/fragment/MsgPushFragment;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/ds/daisi/fragment/MsgPushFragment;->mTvNoMsg:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 120
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/ds/daisi/entity/MsgItem;

    const/16 v1, 0x3eb

    invoke-direct {v0, v1}, Lcom/ds/daisi/entity/MsgItem;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 102
    invoke-super {p0}, Lcom/ds/daisi/fragment/BaseFragement;->onPause()V

    .line 103
    const-class v0, Lcom/ds/daisi/fragment/MsgPushFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 108
    invoke-super {p0}, Lcom/ds/daisi/fragment/BaseFragement;->onResume()V

    .line 109
    const-class v0, Lcom/ds/daisi/fragment/MsgPushFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 42
    invoke-super {p0, p1, p2}, Lcom/ds/daisi/fragment/BaseFragement;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/MsgPushFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    .line 44
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    const-string v0, "msgData"

    .line 46
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/ds/daisi/fragment/MsgPushFragment;->mDataMsgList:Ljava/util/List;

    .line 48
    :cond_0
    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/MsgPushFragment;->initView(Landroid/view/View;)V

    .line 49
    invoke-direct {p0}, Lcom/ds/daisi/fragment/MsgPushFragment;->isShowView()V

    .line 50
    invoke-direct {p0}, Lcom/ds/daisi/fragment/MsgPushFragment;->initEvent()V

    return-void
.end method

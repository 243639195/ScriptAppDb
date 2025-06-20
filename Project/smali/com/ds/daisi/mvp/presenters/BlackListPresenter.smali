.class public Lcom/ds/daisi/mvp/presenters/BlackListPresenter;
.super Lcom/ds/daisi/mvp/presenters/TokenBillPresent;
.source "BlackListPresenter.java"


# instance fields
.field private blackListManager:Lcom/ds/daisi/mvp/managers/BlackListManager;

.field private blackListView:Lcom/ds/daisi/mvp/views/BlackListView;


# direct methods
.method public constructor <init>(Lcom/ds/daisi/mvp/views/TokenBillView;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/ds/daisi/mvp/presenters/TokenBillPresent;-><init>(Lcom/ds/daisi/mvp/views/TokenBillView;)V

    .line 25
    check-cast p1, Lcom/ds/daisi/mvp/views/BlackListView;

    iput-object p1, p0, Lcom/ds/daisi/mvp/presenters/BlackListPresenter;->blackListView:Lcom/ds/daisi/mvp/views/BlackListView;

    .line 26
    new-instance p1, Lcom/ds/daisi/mvp/managers/BlackListManager;

    invoke-direct {p1}, Lcom/ds/daisi/mvp/managers/BlackListManager;-><init>()V

    iput-object p1, p0, Lcom/ds/daisi/mvp/presenters/BlackListPresenter;->blackListManager:Lcom/ds/daisi/mvp/managers/BlackListManager;

    return-void
.end method

.method static synthetic access$000(Lcom/ds/daisi/mvp/presenters/BlackListPresenter;)Lcom/ds/daisi/mvp/views/BlackListView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/ds/daisi/mvp/presenters/BlackListPresenter;->blackListView:Lcom/ds/daisi/mvp/views/BlackListView;

    return-object p0
.end method


# virtual methods
.method public cancelReq()V
    .locals 2

    .line 50
    invoke-static {}, Lcom/ds/daisi/net/volley/VolleyRequestQueue;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    const-class v1, Lcom/ds/daisi/mvp/presenters/BlackListPresenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 51
    invoke-static {}, Lcom/ds/daisi/net/volley/VolleyRequestQueue;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    const-class v1, Lcom/ds/daisi/mvp/presenters/BlackListPresenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    return-void
.end method

.method public isSetBlackList(Landroid/content/Context;)V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/BlackListPresenter;->blackListManager:Lcom/ds/daisi/mvp/managers/BlackListManager;

    const-class v1, Lcom/ds/daisi/mvp/presenters/BlackListPresenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ds/daisi/mvp/presenters/BlackListPresenter$1;

    invoke-direct {v2, p0}, Lcom/ds/daisi/mvp/presenters/BlackListPresenter$1;-><init>(Lcom/ds/daisi/mvp/presenters/BlackListPresenter;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/ds/daisi/mvp/managers/BlackListManager;->isSetBlackList(Landroid/content/Context;Ljava/lang/String;Lcom/ds/daisi/mvp/managers/Callback;)V

    return-void
.end method

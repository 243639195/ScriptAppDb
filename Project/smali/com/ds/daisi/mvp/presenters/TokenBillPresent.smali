.class public Lcom/ds/daisi/mvp/presenters/TokenBillPresent;
.super Ljava/lang/Object;
.source "TokenBillPresent.java"

# interfaces
.implements Lcom/ds/daisi/mvp/presenters/BasePresenter;


# instance fields
.field private tokenBillManager:Lcom/ds/daisi/mvp/managers/TokenBillManager;

.field private tokenBillView:Lcom/ds/daisi/mvp/views/TokenBillView;


# direct methods
.method public constructor <init>(Lcom/ds/daisi/mvp/views/TokenBillView;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/ds/daisi/mvp/presenters/TokenBillPresent;->tokenBillView:Lcom/ds/daisi/mvp/views/TokenBillView;

    .line 26
    new-instance p1, Lcom/ds/daisi/mvp/managers/TokenBillManager;

    invoke-direct {p1}, Lcom/ds/daisi/mvp/managers/TokenBillManager;-><init>()V

    iput-object p1, p0, Lcom/ds/daisi/mvp/presenters/TokenBillPresent;->tokenBillManager:Lcom/ds/daisi/mvp/managers/TokenBillManager;

    return-void
.end method

.method static synthetic access$000(Lcom/ds/daisi/mvp/presenters/TokenBillPresent;)Lcom/ds/daisi/mvp/views/TokenBillView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/ds/daisi/mvp/presenters/TokenBillPresent;->tokenBillView:Lcom/ds/daisi/mvp/views/TokenBillView;

    return-object p0
.end method


# virtual methods
.method public cancelReq()V
    .locals 2

    .line 53
    invoke-static {}, Lcom/ds/daisi/net/volley/VolleyRequestQueue;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    const-class v1, Lcom/ds/daisi/mvp/presenters/BlackListPresenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    return-void
.end method

.method public getCodes(Landroid/content/Context;)V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/TokenBillPresent;->tokenBillManager:Lcom/ds/daisi/mvp/managers/TokenBillManager;

    const-class v1, Lcom/ds/daisi/mvp/presenters/BlackListPresenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ds/daisi/mvp/presenters/TokenBillPresent$1;

    invoke-direct {v2, p0}, Lcom/ds/daisi/mvp/presenters/TokenBillPresent$1;-><init>(Lcom/ds/daisi/mvp/presenters/TokenBillPresent;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/ds/daisi/mvp/managers/TokenBillManager;->getCodes(Landroid/content/Context;Ljava/lang/String;Lcom/ds/daisi/mvp/managers/Callback;)V

    return-void
.end method

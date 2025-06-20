.class public Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter;
.super Ljava/lang/Object;
.source "VerifyTokenPresenter.java"

# interfaces
.implements Lcom/ds/daisi/mvp/presenters/BasePresenter;


# instance fields
.field private checkTokenView:Lcom/ds/daisi/mvp/views/CheckTokenView;

.field private verifyTokenManager:Lcom/ds/daisi/mvp/managers/VerifyTokenManager;


# direct methods
.method public constructor <init>(Lcom/ds/daisi/mvp/views/CheckTokenView;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter;->checkTokenView:Lcom/ds/daisi/mvp/views/CheckTokenView;

    .line 31
    new-instance p1, Lcom/ds/daisi/mvp/managers/VerifyTokenManager;

    invoke-direct {p1}, Lcom/ds/daisi/mvp/managers/VerifyTokenManager;-><init>()V

    iput-object p1, p0, Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter;->verifyTokenManager:Lcom/ds/daisi/mvp/managers/VerifyTokenManager;

    return-void
.end method

.method static synthetic access$000(Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter;)Lcom/ds/daisi/mvp/views/CheckTokenView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter;->checkTokenView:Lcom/ds/daisi/mvp/views/CheckTokenView;

    return-object p0
.end method


# virtual methods
.method public cancelReqAboutToken()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter;->verifyTokenManager:Lcom/ds/daisi/mvp/managers/VerifyTokenManager;

    invoke-virtual {v0}, Lcom/ds/daisi/mvp/managers/VerifyTokenManager;->cancelTag()V

    return-void
.end method

.method public checkToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter;->verifyTokenManager:Lcom/ds/daisi/mvp/managers/VerifyTokenManager;

    new-instance v1, Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter$2;

    invoke-direct {v1, p0}, Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter$2;-><init>(Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/ds/daisi/mvp/managers/VerifyTokenManager;->checkToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ds/daisi/mvp/managers/Callback;)V

    return-void
.end method

.method public generateToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter;->verifyTokenManager:Lcom/ds/daisi/mvp/managers/VerifyTokenManager;

    new-instance v1, Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter$1;

    invoke-direct {v1, p0}, Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter$1;-><init>(Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/ds/daisi/mvp/managers/VerifyTokenManager;->generateToken(Landroid/content/Context;Ljava/lang/String;Lcom/ds/daisi/mvp/managers/Callback;)V

    return-void
.end method

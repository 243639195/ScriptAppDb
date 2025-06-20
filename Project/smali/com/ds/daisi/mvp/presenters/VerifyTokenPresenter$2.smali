.class Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter$2;
.super Ljava/lang/Object;
.source "VerifyTokenPresenter.java"

# interfaces
.implements Lcom/ds/daisi/mvp/managers/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter;->checkToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ds/daisi/mvp/managers/Callback<",
        "Lcom/ds/daisi/entity/TokenBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter;


# direct methods
.method constructor <init>(Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter$2;->this$0:Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter$2;->this$0:Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter;

    invoke-static {v0}, Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter;->access$000(Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter;)Lcom/ds/daisi/mvp/views/CheckTokenView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ds/daisi/mvp/views/CheckTokenView;->checkTokenFail(Ljava/lang/String;)V

    return-void
.end method

.method public finish(Lcom/ds/daisi/entity/TokenBean;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter$2;->this$0:Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter;

    invoke-static {v0}, Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter;->access$000(Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter;)Lcom/ds/daisi/mvp/views/CheckTokenView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ds/daisi/mvp/views/CheckTokenView;->checkToken(Lcom/ds/daisi/entity/TokenBean;)V

    return-void
.end method

.method public bridge synthetic finish(Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Lcom/ds/daisi/entity/TokenBean;

    invoke-virtual {p0, p1}, Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter$2;->finish(Lcom/ds/daisi/entity/TokenBean;)V

    return-void
.end method

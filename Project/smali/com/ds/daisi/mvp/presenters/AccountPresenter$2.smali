.class Lcom/ds/daisi/mvp/presenters/AccountPresenter$2;
.super Ljava/lang/Object;
.source "AccountPresenter.java"

# interfaces
.implements Lcom/ds/daisi/mvp/managers/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/mvp/presenters/AccountPresenter;->register(Landroid/content/Context;Lcom/ds/daisi/entity/AccountUser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ds/daisi/mvp/managers/Callback<",
        "Lcom/ds/daisi/entity/AccountResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/mvp/presenters/AccountPresenter;


# direct methods
.method constructor <init>(Lcom/ds/daisi/mvp/presenters/AccountPresenter;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/ds/daisi/mvp/presenters/AccountPresenter$2;->this$0:Lcom/ds/daisi/mvp/presenters/AccountPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/ds/daisi/mvp/presenters/AccountPresenter$2;->this$0:Lcom/ds/daisi/mvp/presenters/AccountPresenter;

    invoke-static {p1}, Lcom/ds/daisi/mvp/presenters/AccountPresenter;->access$000(Lcom/ds/daisi/mvp/presenters/AccountPresenter;)Lcom/ds/daisi/mvp/views/AccountView;

    move-result-object p1

    invoke-interface {p1}, Lcom/ds/daisi/mvp/views/AccountView;->hideProgressDialog()V

    return-void
.end method

.method public finish(Lcom/ds/daisi/entity/AccountResult;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/AccountPresenter$2;->this$0:Lcom/ds/daisi/mvp/presenters/AccountPresenter;

    invoke-static {v0}, Lcom/ds/daisi/mvp/presenters/AccountPresenter;->access$000(Lcom/ds/daisi/mvp/presenters/AccountPresenter;)Lcom/ds/daisi/mvp/views/AccountView;

    move-result-object v0

    invoke-interface {v0}, Lcom/ds/daisi/mvp/views/AccountView;->hideProgressDialog()V

    .line 61
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/AccountPresenter$2;->this$0:Lcom/ds/daisi/mvp/presenters/AccountPresenter;

    invoke-static {v0}, Lcom/ds/daisi/mvp/presenters/AccountPresenter;->access$000(Lcom/ds/daisi/mvp/presenters/AccountPresenter;)Lcom/ds/daisi/mvp/views/AccountView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ds/daisi/mvp/views/AccountView;->registerResult(Lcom/ds/daisi/entity/AccountResult;)V

    return-void
.end method

.method public bridge synthetic finish(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Lcom/ds/daisi/entity/AccountResult;

    invoke-virtual {p0, p1}, Lcom/ds/daisi/mvp/presenters/AccountPresenter$2;->finish(Lcom/ds/daisi/entity/AccountResult;)V

    return-void
.end method

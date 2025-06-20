.class Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter$2;
.super Ljava/lang/Object;
.source "VerifyPermissionPresenter.java"

# interfaces
.implements Lcom/ds/daisi/mvp/managers/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;->getScriptTryCount(Landroid/content/Context;)V
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
.field final synthetic this$0:Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;


# direct methods
.method constructor <init>(Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter$2;->this$0:Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public finish(Lcom/ds/daisi/entity/AccountResult;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter$2;->this$0:Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;

    invoke-static {v0}, Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;->access$000(Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;)Lcom/ds/daisi/mvp/views/VerifyPermissionView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ds/daisi/mvp/views/VerifyPermissionView;->getTryCountResult(Lcom/ds/daisi/entity/AccountResult;)V

    return-void
.end method

.method public bridge synthetic finish(Ljava/lang/Object;)V
    .locals 0

    .line 53
    check-cast p1, Lcom/ds/daisi/entity/AccountResult;

    invoke-virtual {p0, p1}, Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter$2;->finish(Lcom/ds/daisi/entity/AccountResult;)V

    return-void
.end method

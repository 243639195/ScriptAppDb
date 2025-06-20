.class Lcom/ds/daisi/mvp/presenters/TemplatePresenter$1;
.super Ljava/lang/Object;
.source "TemplatePresenter.java"

# interfaces
.implements Lcom/ds/daisi/mvp/managers/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/mvp/presenters/TemplatePresenter;->singleApkOrTemplateChecked(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ds/daisi/mvp/managers/Callback<",
        "Lcom/ds/daisi/entity/TemplateStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/mvp/presenters/TemplatePresenter;

.field final synthetic val$interfaceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ds/daisi/mvp/presenters/TemplatePresenter;Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/ds/daisi/mvp/presenters/TemplatePresenter$1;->this$0:Lcom/ds/daisi/mvp/presenters/TemplatePresenter;

    iput-object p2, p0, Lcom/ds/daisi/mvp/presenters/TemplatePresenter$1;->val$interfaceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request error type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/TemplatePresenter$1;->val$interfaceName:Ljava/lang/String;

    sget-object v1, Lcom/ds/daisi/net/URL/URLConstant;->MONOMER_INSTALLATION_PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/TemplatePresenter$1;->this$0:Lcom/ds/daisi/mvp/presenters/TemplatePresenter;

    invoke-static {v0}, Lcom/ds/daisi/mvp/presenters/TemplatePresenter;->access$000(Lcom/ds/daisi/mvp/presenters/TemplatePresenter;)Lcom/ds/daisi/mvp/views/TemplateView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ds/daisi/mvp/views/TemplateView;->errorMsg(Ljava/lang/String;)V

    return-void
.end method

.method public finish(Lcom/ds/daisi/entity/TemplateStatus;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/TemplatePresenter$1;->this$0:Lcom/ds/daisi/mvp/presenters/TemplatePresenter;

    invoke-static {v0}, Lcom/ds/daisi/mvp/presenters/TemplatePresenter;->access$000(Lcom/ds/daisi/mvp/presenters/TemplatePresenter;)Lcom/ds/daisi/mvp/views/TemplateView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ds/daisi/mvp/views/TemplateView;->apkCheckedResult(Lcom/ds/daisi/entity/TemplateStatus;)V

    return-void
.end method

.method public bridge synthetic finish(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/ds/daisi/entity/TemplateStatus;

    invoke-virtual {p0, p1}, Lcom/ds/daisi/mvp/presenters/TemplatePresenter$1;->finish(Lcom/ds/daisi/entity/TemplateStatus;)V

    return-void
.end method

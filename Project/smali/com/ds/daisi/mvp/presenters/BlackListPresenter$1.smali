.class Lcom/ds/daisi/mvp/presenters/BlackListPresenter$1;
.super Ljava/lang/Object;
.source "BlackListPresenter.java"

# interfaces
.implements Lcom/ds/daisi/mvp/managers/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/mvp/presenters/BlackListPresenter;->isSetBlackList(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ds/daisi/mvp/managers/Callback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/mvp/presenters/BlackListPresenter;


# direct methods
.method constructor <init>(Lcom/ds/daisi/mvp/presenters/BlackListPresenter;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/ds/daisi/mvp/presenters/BlackListPresenter$1;->this$0:Lcom/ds/daisi/mvp/presenters/BlackListPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
    .locals 0

    .line 43
    iget-object p1, p0, Lcom/ds/daisi/mvp/presenters/BlackListPresenter$1;->this$0:Lcom/ds/daisi/mvp/presenters/BlackListPresenter;

    invoke-static {p1}, Lcom/ds/daisi/mvp/presenters/BlackListPresenter;->access$000(Lcom/ds/daisi/mvp/presenters/BlackListPresenter;)Lcom/ds/daisi/mvp/views/BlackListView;

    move-result-object p1

    invoke-interface {p1}, Lcom/ds/daisi/mvp/views/BlackListView;->getBlackError()V

    return-void
.end method

.method public bridge synthetic finish(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ds/daisi/mvp/presenters/BlackListPresenter$1;->finish(Ljava/lang/String;)V

    return-void
.end method

.method public finish(Ljava/lang/String;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/BlackListPresenter$1;->this$0:Lcom/ds/daisi/mvp/presenters/BlackListPresenter;

    invoke-static {v0}, Lcom/ds/daisi/mvp/presenters/BlackListPresenter;->access$000(Lcom/ds/daisi/mvp/presenters/BlackListPresenter;)Lcom/ds/daisi/mvp/views/BlackListView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ds/daisi/mvp/views/BlackListView;->setBlackListResult(Ljava/lang/String;)V

    return-void
.end method

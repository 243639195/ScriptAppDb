.class Lcom/ds/daisi/AppContext$1;
.super Landroid/os/Handler;
.source "AppContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/AppContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/AppContext;


# direct methods
.method constructor <init>(Lcom/ds/daisi/AppContext;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/ds/daisi/AppContext$1;->this$0:Lcom/ds/daisi/AppContext;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 204
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 205
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 206
    invoke-static {}, Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;->getInstance()Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;

    move-result-object p1

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;->report(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

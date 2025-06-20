.class Lcom/ds/daisi/mvp/presenters/TokenBillPresent$1;
.super Ljava/lang/Object;
.source "TokenBillPresent.java"

# interfaces
.implements Lcom/ds/daisi/mvp/managers/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/mvp/presenters/TokenBillPresent;->getCodes(Landroid/content/Context;)V
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
.field final synthetic this$0:Lcom/ds/daisi/mvp/presenters/TokenBillPresent;


# direct methods
.method constructor <init>(Lcom/ds/daisi/mvp/presenters/TokenBillPresent;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/ds/daisi/mvp/presenters/TokenBillPresent$1;->this$0:Lcom/ds/daisi/mvp/presenters/TokenBillPresent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/TokenBillPresent$1;->this$0:Lcom/ds/daisi/mvp/presenters/TokenBillPresent;

    invoke-static {v0}, Lcom/ds/daisi/mvp/presenters/TokenBillPresent;->access$000(Lcom/ds/daisi/mvp/presenters/TokenBillPresent;)Lcom/ds/daisi/mvp/views/TokenBillView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ds/daisi/mvp/views/TokenBillView;->getLotteryByFail(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic finish(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ds/daisi/mvp/presenters/TokenBillPresent$1;->finish(Ljava/lang/String;)V

    return-void
.end method

.method public finish(Ljava/lang/String;)V
    .locals 3

    .line 37
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 38
    const-class v1, Lcom/ds/daisi/entity/LotteryDataEntry;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ds/daisi/entity/LotteryDataEntry;

    .line 39
    iget-object v1, v0, Lcom/ds/daisi/entity/LotteryDataEntry;->Msg:Ljava/lang/String;

    const-string v2, "\u6210\u529f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/ds/daisi/entity/LotteryDataEntry;->Codes:Lcom/ds/daisi/entity/LotteryDataEntry$Codes;

    iget-object v0, v0, Lcom/ds/daisi/entity/LotteryDataEntry$Codes;->Code1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/TokenBillPresent$1;->this$0:Lcom/ds/daisi/mvp/presenters/TokenBillPresent;

    invoke-static {v0}, Lcom/ds/daisi/mvp/presenters/TokenBillPresent;->access$000(Lcom/ds/daisi/mvp/presenters/TokenBillPresent;)Lcom/ds/daisi/mvp/views/TokenBillView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ds/daisi/mvp/views/TokenBillView;->getLotteryArray(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/mvp/presenters/TokenBillPresent$1;->this$0:Lcom/ds/daisi/mvp/presenters/TokenBillPresent;

    invoke-static {p1}, Lcom/ds/daisi/mvp/presenters/TokenBillPresent;->access$000(Lcom/ds/daisi/mvp/presenters/TokenBillPresent;)Lcom/ds/daisi/mvp/views/TokenBillView;

    move-result-object p1

    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/ds/daisi/mvp/views/TokenBillView;->getLotteryArray(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

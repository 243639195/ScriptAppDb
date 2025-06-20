.class Lcom/ds/daisi/mvp/managers/AccountManager$1;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/mvp/managers/AccountManager;->requestPostWithAccount(Lcom/ds/daisi/entity/AccountUser;Lcom/ds/daisi/mvp/managers/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/mvp/managers/AccountManager;


# direct methods
.method constructor <init>(Lcom/ds/daisi/mvp/managers/AccountManager;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/ds/daisi/mvp/managers/AccountManager$1;->this$0:Lcom/ds/daisi/mvp/managers/AccountManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 119
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/ds/daisi/mvp/managers/AccountManager$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 2

    .line 122
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/ds/daisi/mvp/managers/AccountManager$1;->this$0:Lcom/ds/daisi/mvp/managers/AccountManager;

    invoke-virtual {v0, p1}, Lcom/ds/daisi/mvp/managers/AccountManager;->fillDataToAccount(Lorg/json/JSONObject;)Lcom/ds/daisi/entity/AccountResult;

    move-result-object p1

    .line 124
    iget-object v0, p0, Lcom/ds/daisi/mvp/managers/AccountManager$1;->this$0:Lcom/ds/daisi/mvp/managers/AccountManager;

    invoke-static {v0}, Lcom/ds/daisi/mvp/managers/AccountManager;->access$000(Lcom/ds/daisi/mvp/managers/AccountManager;)Lcom/ds/daisi/mvp/managers/Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ds/daisi/mvp/managers/Callback;->finish(Ljava/lang/Object;)V

    return-void
.end method

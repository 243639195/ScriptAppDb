.class Lcom/ds/daisi/mvp/managers/AccountManager$2;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/mvp/managers/AccountManager;->requestPostWithAccount(Lcom/ds/daisi/entity/AccountUser;Lcom/ds/daisi/mvp/managers/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/mvp/managers/AccountManager;


# direct methods
.method constructor <init>(Lcom/ds/daisi/mvp/managers/AccountManager;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/ds/daisi/mvp/managers/AccountManager$2;->this$0:Lcom/ds/daisi/mvp/managers/AccountManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/ds/daisi/mvp/managers/AccountManager$2;->this$0:Lcom/ds/daisi/mvp/managers/AccountManager;

    invoke-static {v0}, Lcom/ds/daisi/mvp/managers/AccountManager;->access$000(Lcom/ds/daisi/mvp/managers/AccountManager;)Lcom/ds/daisi/mvp/managers/Callback;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ds/daisi/mvp/managers/Callback;->error(Ljava/lang/String;)V

    return-void
.end method

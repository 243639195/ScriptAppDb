.class Lkiller/cloud/client/CloudClient$1;
.super Ljava/lang/Object;
.source "CloudClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkiller/cloud/client/CloudClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkiller/cloud/client/CloudClient;


# direct methods
.method constructor <init>(Lkiller/cloud/client/CloudClient;)V
    .locals 0
    .param p1, "this$0"    # Lkiller/cloud/client/CloudClient;

    .prologue
    .line 23
    iput-object p1, p0, Lkiller/cloud/client/CloudClient$1;->this$0:Lkiller/cloud/client/CloudClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lkiller/cloud/client/CloudClient$1;->this$0:Lkiller/cloud/client/CloudClient;

    invoke-virtual {v0}, Lkiller/cloud/client/CloudClient;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkiller/cloud/client/CloudClient$1;->this$0:Lkiller/cloud/client/CloudClient;

    invoke-static {v0}, Lkiller/cloud/client/CloudClient;->access$000(Lkiller/cloud/client/CloudClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lkiller/cloud/client/CloudClient$1;->this$0:Lkiller/cloud/client/CloudClient;

    invoke-virtual {v0}, Lkiller/cloud/client/CloudClient;->reconnect()V

    .line 30
    :cond_0
    return-void
.end method

.class Lkiller/cloud/client/CloudClient$2;
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
    .line 33
    iput-object p1, p0, Lkiller/cloud/client/CloudClient$2;->this$0:Lkiller/cloud/client/CloudClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 36
    iget-object v0, p0, Lkiller/cloud/client/CloudClient$2;->this$0:Lkiller/cloud/client/CloudClient;

    invoke-virtual {v0}, Lkiller/cloud/client/CloudClient;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lkiller/cloud/client/CloudClient$2;->this$0:Lkiller/cloud/client/CloudClient;

    const-string v1, "ping"

    invoke-virtual {v0, v1}, Lkiller/cloud/client/CloudClient;->send(Ljava/lang/String;)V

    .line 39
    :cond_0
    iget-object v0, p0, Lkiller/cloud/client/CloudClient$2;->this$0:Lkiller/cloud/client/CloudClient;

    invoke-static {v0}, Lkiller/cloud/client/CloudClient;->access$100(Lkiller/cloud/client/CloudClient;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    return-void
.end method

.class Lcom/cyjh/share/util/InternalFileUtils$2;
.super Ljava/lang/Object;
.source "InternalFileUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/share/util/InternalFileUtils;->copyAssetsToSD(Ljava/lang/String;Ljava/lang/String;)Lcom/cyjh/share/util/InternalFileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyjh/share/util/InternalFileUtils;

.field final synthetic val$sdPath:Ljava/lang/String;

.field final synthetic val$srcPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cyjh/share/util/InternalFileUtils;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/cyjh/share/util/InternalFileUtils$2;->this$0:Lcom/cyjh/share/util/InternalFileUtils;

    iput-object p2, p0, Lcom/cyjh/share/util/InternalFileUtils$2;->val$srcPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/cyjh/share/util/InternalFileUtils$2;->val$sdPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/cyjh/share/util/InternalFileUtils$2;->this$0:Lcom/cyjh/share/util/InternalFileUtils;

    iget-object v1, p0, Lcom/cyjh/share/util/InternalFileUtils$2;->this$0:Lcom/cyjh/share/util/InternalFileUtils;

    invoke-static {v1}, Lcom/cyjh/share/util/InternalFileUtils;->access$100(Lcom/cyjh/share/util/InternalFileUtils;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cyjh/share/util/InternalFileUtils$2;->val$srcPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/cyjh/share/util/InternalFileUtils$2;->val$sdPath:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/cyjh/share/util/InternalFileUtils;->access$200(Lcom/cyjh/share/util/InternalFileUtils;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/cyjh/share/util/InternalFileUtils$2;->this$0:Lcom/cyjh/share/util/InternalFileUtils;

    invoke-static {v0}, Lcom/cyjh/share/util/InternalFileUtils;->access$300(Lcom/cyjh/share/util/InternalFileUtils;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/cyjh/share/util/InternalFileUtils$2;->this$0:Lcom/cyjh/share/util/InternalFileUtils;

    invoke-static {v0}, Lcom/cyjh/share/util/InternalFileUtils;->access$400(Lcom/cyjh/share/util/InternalFileUtils;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/cyjh/share/util/InternalFileUtils$2;->this$0:Lcom/cyjh/share/util/InternalFileUtils;

    invoke-static {v0}, Lcom/cyjh/share/util/InternalFileUtils;->access$400(Lcom/cyjh/share/util/InternalFileUtils;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/cyjh/share/util/InternalFileUtils$2;->this$0:Lcom/cyjh/share/util/InternalFileUtils;

    invoke-static {v2}, Lcom/cyjh/share/util/InternalFileUtils;->access$500(Lcom/cyjh/share/util/InternalFileUtils;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

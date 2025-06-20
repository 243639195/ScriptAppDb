.class Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$1;
.super Landroid/os/Handler;
.source "ImageSelectFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;


# direct methods
.method constructor <init>(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$1;->this$0:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 68
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/cyjh/feedback/lib/entities/FolderBean;

    .line 69
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$1;->this$0:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-static {v0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->access$000(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 70
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$1;->this$0:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-static {v0, p1}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->access$100(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;Lcom/cyjh/feedback/lib/entities/FolderBean;)V

    return-void
.end method

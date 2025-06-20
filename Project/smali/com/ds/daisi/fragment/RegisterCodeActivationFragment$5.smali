.class Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$5;
.super Ljava/lang/Object;
.source "RegisterCodeActivationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->onQuerySuc(Lcom/ds/daisi/entity/RegCodeInfoResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;

.field final synthetic val$mAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;Landroid/app/AlertDialog;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$5;->this$0:Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;

    iput-object p2, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$5;->val$mAlertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 381
    iget-object p1, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$5;->val$mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 383
    iget-object p1, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$5;->this$0:Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;

    invoke-static {p1}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->access$400(Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;)Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$MyHandler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x111

    invoke-virtual {p1, v1, v0}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

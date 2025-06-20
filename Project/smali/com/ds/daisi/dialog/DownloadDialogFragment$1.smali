.class Lcom/ds/daisi/dialog/DownloadDialogFragment$1;
.super Ljava/lang/Object;
.source "DownloadDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/dialog/DownloadDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/dialog/DownloadDialogFragment;


# direct methods
.method constructor <init>(Lcom/ds/daisi/dialog/DownloadDialogFragment;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/ds/daisi/dialog/DownloadDialogFragment$1;->this$0:Lcom/ds/daisi/dialog/DownloadDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 74
    iget-object p1, p0, Lcom/ds/daisi/dialog/DownloadDialogFragment$1;->this$0:Lcom/ds/daisi/dialog/DownloadDialogFragment;

    invoke-static {p1}, Lcom/ds/daisi/dialog/DownloadDialogFragment;->access$100(Lcom/ds/daisi/dialog/DownloadDialogFragment;)Lcom/ds/daisi/dialog/DownloadDialogFragment$OnDownloadClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/ds/daisi/dialog/DownloadDialogFragment$1;->this$0:Lcom/ds/daisi/dialog/DownloadDialogFragment;

    invoke-static {v0}, Lcom/ds/daisi/dialog/DownloadDialogFragment;->access$000(Lcom/ds/daisi/dialog/DownloadDialogFragment;)Lcom/cyjh/share/view/SubmitProcessButton;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ds/daisi/dialog/DownloadDialogFragment$OnDownloadClickListener;->downloadOnClick(Lcom/cyjh/share/view/SubmitProcessButton;)V

    return-void
.end method

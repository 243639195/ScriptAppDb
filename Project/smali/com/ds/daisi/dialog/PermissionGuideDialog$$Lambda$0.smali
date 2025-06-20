.class final synthetic Lcom/ds/daisi/dialog/PermissionGuideDialog$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final arg$1:Lcom/ds/daisi/dialog/PermissionGuideDialog;


# direct methods
.method constructor <init>(Lcom/ds/daisi/dialog/PermissionGuideDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ds/daisi/dialog/PermissionGuideDialog$$Lambda$0;->arg$1:Lcom/ds/daisi/dialog/PermissionGuideDialog;

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/ds/daisi/dialog/PermissionGuideDialog$$Lambda$0;->arg$1:Lcom/ds/daisi/dialog/PermissionGuideDialog;

    invoke-virtual {v0, p1}, Lcom/ds/daisi/dialog/PermissionGuideDialog;->lambda$initListener$0$PermissionGuideDialog(Landroid/content/DialogInterface;)V

    return-void
.end method

.class Lcom/ds/daisi/dialog/NoRootDialog$1;
.super Ljava/lang/Object;
.source "NoRootDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/dialog/NoRootDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/dialog/NoRootDialog;


# direct methods
.method constructor <init>(Lcom/ds/daisi/dialog/NoRootDialog;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/ds/daisi/dialog/NoRootDialog$1;->this$0:Lcom/ds/daisi/dialog/NoRootDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 31
    iget-object p1, p0, Lcom/ds/daisi/dialog/NoRootDialog$1;->this$0:Lcom/ds/daisi/dialog/NoRootDialog;

    invoke-virtual {p1}, Lcom/ds/daisi/dialog/NoRootDialog;->dismiss()V

    return-void
.end method

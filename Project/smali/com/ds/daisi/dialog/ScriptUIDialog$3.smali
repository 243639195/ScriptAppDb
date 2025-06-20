.class Lcom/ds/daisi/dialog/ScriptUIDialog$3;
.super Ljava/lang/Object;
.source "ScriptUIDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/dialog/ScriptUIDialog;->convertScreen(FFIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/dialog/ScriptUIDialog;

.field final synthetic val$flag:I

.field final synthetic val$height:F

.field final synthetic val$isCreateFirst:Z

.field final synthetic val$width:F


# direct methods
.method constructor <init>(Lcom/ds/daisi/dialog/ScriptUIDialog;FFIZ)V
    .locals 0

    .line 659
    iput-object p1, p0, Lcom/ds/daisi/dialog/ScriptUIDialog$3;->this$0:Lcom/ds/daisi/dialog/ScriptUIDialog;

    iput p2, p0, Lcom/ds/daisi/dialog/ScriptUIDialog$3;->val$width:F

    iput p3, p0, Lcom/ds/daisi/dialog/ScriptUIDialog$3;->val$height:F

    iput p4, p0, Lcom/ds/daisi/dialog/ScriptUIDialog$3;->val$flag:I

    iput-boolean p5, p0, Lcom/ds/daisi/dialog/ScriptUIDialog$3;->val$isCreateFirst:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 662
    iget-object v0, p0, Lcom/ds/daisi/dialog/ScriptUIDialog$3;->this$0:Lcom/ds/daisi/dialog/ScriptUIDialog;

    iget v1, p0, Lcom/ds/daisi/dialog/ScriptUIDialog$3;->val$width:F

    iget v2, p0, Lcom/ds/daisi/dialog/ScriptUIDialog$3;->val$height:F

    invoke-virtual {v0, v1, v2}, Lcom/ds/daisi/dialog/ScriptUIDialog;->setDialogSize(FF)V

    .line 663
    iget-object v0, p0, Lcom/ds/daisi/dialog/ScriptUIDialog$3;->this$0:Lcom/ds/daisi/dialog/ScriptUIDialog;

    iget v1, p0, Lcom/ds/daisi/dialog/ScriptUIDialog$3;->val$flag:I

    iget-boolean v2, p0, Lcom/ds/daisi/dialog/ScriptUIDialog$3;->val$isCreateFirst:Z

    invoke-static {v0, v1, v2}, Lcom/ds/daisi/dialog/ScriptUIDialog;->access$100(Lcom/ds/daisi/dialog/ScriptUIDialog;IZ)V

    .line 664
    iget-object v0, p0, Lcom/ds/daisi/dialog/ScriptUIDialog$3;->this$0:Lcom/ds/daisi/dialog/ScriptUIDialog;

    invoke-virtual {v0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->show()V

    return-void
.end method

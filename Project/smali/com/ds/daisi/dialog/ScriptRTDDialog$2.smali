.class Lcom/ds/daisi/dialog/ScriptRTDDialog$2;
.super Ljava/lang/Object;
.source "ScriptRTDDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/dialog/ScriptRTDDialog;->convertScreen(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/dialog/ScriptRTDDialog;

.field final synthetic val$height:F

.field final synthetic val$width:F


# direct methods
.method constructor <init>(Lcom/ds/daisi/dialog/ScriptRTDDialog;FF)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/ds/daisi/dialog/ScriptRTDDialog$2;->this$0:Lcom/ds/daisi/dialog/ScriptRTDDialog;

    iput p2, p0, Lcom/ds/daisi/dialog/ScriptRTDDialog$2;->val$width:F

    iput p3, p0, Lcom/ds/daisi/dialog/ScriptRTDDialog$2;->val$height:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/ds/daisi/dialog/ScriptRTDDialog$2;->this$0:Lcom/ds/daisi/dialog/ScriptRTDDialog;

    iget v1, p0, Lcom/ds/daisi/dialog/ScriptRTDDialog$2;->val$width:F

    iget v2, p0, Lcom/ds/daisi/dialog/ScriptRTDDialog$2;->val$height:F

    invoke-virtual {v0, v1, v2}, Lcom/ds/daisi/dialog/ScriptRTDDialog;->setDialogSize(FF)V

    .line 103
    iget-object v0, p0, Lcom/ds/daisi/dialog/ScriptRTDDialog$2;->this$0:Lcom/ds/daisi/dialog/ScriptRTDDialog;

    invoke-virtual {v0}, Lcom/ds/daisi/dialog/ScriptRTDDialog;->show()V

    return-void
.end method

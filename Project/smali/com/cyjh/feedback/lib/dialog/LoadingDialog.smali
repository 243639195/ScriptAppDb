.class public Lcom/cyjh/feedback/lib/dialog/LoadingDialog;
.super Lcom/cyjh/feedback/lib/base/BaseDialog;
.source "LoadingDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 14
    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$style;->Theme_Dialog:I

    invoke-direct {p0, p1, v0}, Lcom/cyjh/feedback/lib/base/BaseDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 19
    invoke-super {p0, p1}, Lcom/cyjh/feedback/lib/base/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 20
    sget p1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$layout;->dialog_loading:I

    invoke-virtual {p0, p1}, Lcom/cyjh/feedback/lib/dialog/LoadingDialog;->setContentView(I)V

    const p1, 0x3e99999a    # 0.3f

    .line 21
    invoke-virtual {p0, p1}, Lcom/cyjh/feedback/lib/dialog/LoadingDialog;->setBlurEffect(F)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 22
    invoke-virtual {p0, p1, p1}, Lcom/cyjh/feedback/lib/dialog/LoadingDialog;->setDialogSize(FF)V

    return-void
.end method

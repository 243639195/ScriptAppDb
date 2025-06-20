.class public Lcom/cyjh/feedback/lib/dialog/FeedBackCommitDialog;
.super Lcom/cyjh/feedback/lib/base/BaseDialog;
.source "FeedBackCommitDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 15
    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$style;->Theme_Dialog:I

    invoke-direct {p0, p1, v0}, Lcom/cyjh/feedback/lib/base/BaseDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 20
    invoke-super {p0, p1}, Lcom/cyjh/feedback/lib/base/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 21
    sget p1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$layout;->dialog_feedback_commit:I

    invoke-virtual {p0, p1}, Lcom/cyjh/feedback/lib/dialog/FeedBackCommitDialog;->setContentView(I)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 22
    invoke-virtual {p0, p1}, Lcom/cyjh/feedback/lib/dialog/FeedBackCommitDialog;->setBlurEffect(F)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 23
    invoke-virtual {p0, p1, p1}, Lcom/cyjh/feedback/lib/dialog/FeedBackCommitDialog;->setDialogSize(FF)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/dialog/FeedBackCommitDialog;->dismiss()V

    const/4 p1, 0x1

    return p1
.end method

.class public Lcom/ds/daisi/dialog/NoRootDialog;
.super Lcom/ds/daisi/dialog/BaseDialog;
.source "NoRootDialog.java"


# instance fields
.field private mBtnSure:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0b0131

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/ds/daisi/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 22
    invoke-super {p0, p1}, Lcom/ds/daisi/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040054

    .line 23
    invoke-virtual {p0, p1}, Lcom/ds/daisi/dialog/NoRootDialog;->setContentView(I)V

    const p1, 0x3f4ccccd    # 0.8f

    const v0, 0x3ecccccd    # 0.4f

    .line 24
    invoke-virtual {p0, p1, v0}, Lcom/ds/daisi/dialog/NoRootDialog;->setDialogSize(FF)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 25
    invoke-virtual {p0, p1}, Lcom/ds/daisi/dialog/NoRootDialog;->setBlurEffect(F)V

    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, p1}, Lcom/ds/daisi/dialog/NoRootDialog;->setCanceledOnTouchOutside(Z)V

    const p1, 0x7f100132

    .line 27
    invoke-virtual {p0, p1}, Lcom/ds/daisi/dialog/NoRootDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/ds/daisi/dialog/NoRootDialog;->mBtnSure:Landroid/widget/Button;

    .line 28
    iget-object p1, p0, Lcom/ds/daisi/dialog/NoRootDialog;->mBtnSure:Landroid/widget/Button;

    new-instance v0, Lcom/ds/daisi/dialog/NoRootDialog$1;

    invoke-direct {v0, p0}, Lcom/ds/daisi/dialog/NoRootDialog$1;-><init>(Lcom/ds/daisi/dialog/NoRootDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

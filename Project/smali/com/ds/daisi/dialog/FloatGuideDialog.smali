.class public Lcom/ds/daisi/dialog/FloatGuideDialog;
.super Lcom/ds/daisi/dialog/BaseDialog;
.source "FloatGuideDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/dialog/FloatGuideDialog$OnConfirmResult;
    }
.end annotation


# instance fields
.field private mButtonOpen:Landroid/widget/Button;

.field private mConfirmResult:Lcom/ds/daisi/dialog/FloatGuideDialog$OnConfirmResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0b0131

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/ds/daisi/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private initView()V
    .locals 1

    const v0, 0x7f10012d

    .line 28
    invoke-virtual {p0, v0}, Lcom/ds/daisi/dialog/FloatGuideDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ds/daisi/dialog/FloatGuideDialog;->mButtonOpen:Landroid/widget/Button;

    .line 29
    iget-object v0, p0, Lcom/ds/daisi/dialog/FloatGuideDialog;->mButtonOpen:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f10012d

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/dialog/FloatGuideDialog;->mConfirmResult:Lcom/ds/daisi/dialog/FloatGuideDialog$OnConfirmResult;

    if-eqz p1, :cond_1

    .line 37
    iget-object p1, p0, Lcom/ds/daisi/dialog/FloatGuideDialog;->mConfirmResult:Lcom/ds/daisi/dialog/FloatGuideDialog$OnConfirmResult;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/ds/daisi/dialog/FloatGuideDialog$OnConfirmResult;->confirmResult(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 21
    invoke-super {p0, p1}, Lcom/ds/daisi/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040052

    .line 22
    invoke-virtual {p0, p1}, Lcom/ds/daisi/dialog/FloatGuideDialog;->setContentView(I)V

    const p1, 0x3f4ccccd    # 0.8f

    const v0, 0x3e99999a    # 0.3f

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/ds/daisi/dialog/FloatGuideDialog;->setDialogSize(FF)V

    .line 24
    invoke-direct {p0}, Lcom/ds/daisi/dialog/FloatGuideDialog;->initView()V

    return-void
.end method

.method public setConfirmResult(Lcom/ds/daisi/dialog/FloatGuideDialog$OnConfirmResult;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/ds/daisi/dialog/FloatGuideDialog;->mConfirmResult:Lcom/ds/daisi/dialog/FloatGuideDialog$OnConfirmResult;

    return-void
.end method

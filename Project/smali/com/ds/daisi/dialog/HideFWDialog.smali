.class public Lcom/ds/daisi/dialog/HideFWDialog;
.super Lcom/ds/daisi/dialog/BaseDialog;
.source "HideFWDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/dialog/HideFWDialog$OnHideCancelClickListener;,
        Lcom/ds/daisi/dialog/HideFWDialog$OnHideOKClickListener;
    }
.end annotation


# instance fields
.field private mButtonCancel:Landroid/widget/Button;

.field private mButtonOK:Landroid/widget/Button;

.field private mOnHideCancelClickListener:Lcom/ds/daisi/dialog/HideFWDialog$OnHideCancelClickListener;

.field private mOnHideOKClickListener:Lcom/ds/daisi/dialog/HideFWDialog$OnHideOKClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0b0131

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/ds/daisi/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 31
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/HideFWDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7f6

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    .line 33
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    .line 34
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/HideFWDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 35
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/HideFWDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d5

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/HideFWDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 39
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/HideFWDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d2

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private initView()V
    .locals 1

    const v0, 0x7f100125

    .line 54
    invoke-virtual {p0, v0}, Lcom/ds/daisi/dialog/HideFWDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ds/daisi/dialog/HideFWDialog;->mButtonOK:Landroid/widget/Button;

    const v0, 0x7f100124

    .line 55
    invoke-virtual {p0, v0}, Lcom/ds/daisi/dialog/HideFWDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ds/daisi/dialog/HideFWDialog;->mButtonCancel:Landroid/widget/Button;

    .line 57
    iget-object v0, p0, Lcom/ds/daisi/dialog/HideFWDialog;->mButtonOK:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/ds/daisi/dialog/HideFWDialog;->mButtonCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 65
    :pswitch_0
    iget-object v0, p0, Lcom/ds/daisi/dialog/HideFWDialog;->mOnHideOKClickListener:Lcom/ds/daisi/dialog/HideFWDialog$OnHideOKClickListener;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/ds/daisi/dialog/HideFWDialog;->mOnHideOKClickListener:Lcom/ds/daisi/dialog/HideFWDialog$OnHideOKClickListener;

    invoke-interface {v0, p1}, Lcom/ds/daisi/dialog/HideFWDialog$OnHideOKClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 70
    :pswitch_1
    iget-object v0, p0, Lcom/ds/daisi/dialog/HideFWDialog;->mOnHideCancelClickListener:Lcom/ds/daisi/dialog/HideFWDialog$OnHideCancelClickListener;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/ds/daisi/dialog/HideFWDialog;->mOnHideCancelClickListener:Lcom/ds/daisi/dialog/HideFWDialog$OnHideCancelClickListener;

    invoke-interface {v0, p1}, Lcom/ds/daisi/dialog/HideFWDialog$OnHideCancelClickListener;->onClick(Landroid/view/View;)V

    .line 78
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/HideFWDialog;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f100124
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lcom/ds/daisi/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f04004d

    .line 47
    invoke-virtual {p0, p1}, Lcom/ds/daisi/dialog/HideFWDialog;->setContentView(I)V

    const p1, 0x3dcccccd    # 0.1f

    .line 48
    invoke-virtual {p0, p1}, Lcom/ds/daisi/dialog/HideFWDialog;->setBlurEffect(F)V

    const p1, 0x3f4ccccd    # 0.8f

    const v0, 0x3e99999a    # 0.3f

    .line 49
    invoke-virtual {p0, p1, v0}, Lcom/ds/daisi/dialog/HideFWDialog;->setDialogSize(FF)V

    .line 50
    invoke-direct {p0}, Lcom/ds/daisi/dialog/HideFWDialog;->initView()V

    return-void
.end method

.method public setOnHideCancelClickListener(Lcom/ds/daisi/dialog/HideFWDialog$OnHideCancelClickListener;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/ds/daisi/dialog/HideFWDialog;->mOnHideCancelClickListener:Lcom/ds/daisi/dialog/HideFWDialog$OnHideCancelClickListener;

    return-void
.end method

.method public setOnHideOKClickListener(Lcom/ds/daisi/dialog/HideFWDialog$OnHideOKClickListener;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/ds/daisi/dialog/HideFWDialog;->mOnHideOKClickListener:Lcom/ds/daisi/dialog/HideFWDialog$OnHideOKClickListener;

    return-void
.end method

.class public Lcom/cyjh/share/dialog/BaseDialog;
.super Landroid/app/Dialog;
.source "BaseDialog.java"


# instance fields
.field private heightPercentage:F

.field protected mContext:Landroid/content/Context;

.field private widthPercentage:F


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const p2, 0x3f4ccccd    # 0.8f

    .line 19
    iput p2, p0, Lcom/cyjh/share/dialog/BaseDialog;->widthPercentage:F

    .line 20
    iput p2, p0, Lcom/cyjh/share/dialog/BaseDialog;->heightPercentage:F

    .line 24
    iput-object p1, p0, Lcom/cyjh/share/dialog/BaseDialog;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/cyjh/share/dialog/BaseDialog;->setBlurEffect()V

    return-void
.end method

.method protected setBlurEffect()V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 34
    invoke-virtual {p0, v0}, Lcom/cyjh/share/dialog/BaseDialog;->setBlurEffect(F)V

    return-void
.end method

.method protected setBlurEffect(F)V
    .locals 2

    .line 41
    invoke-virtual {p0}, Lcom/cyjh/share/dialog/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 43
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 p1, 0x2

    .line 45
    invoke-virtual {v0, p1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method protected setDialogSize()V
    .locals 4

    .line 49
    invoke-virtual {p0}, Lcom/cyjh/share/dialog/BaseDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/share/util/CommonUtil;->getResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lcom/cyjh/share/dialog/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 51
    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Lcom/cyjh/share/dialog/BaseDialog;->widthPercentage:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 52
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v2, p0, Lcom/cyjh/share/dialog/BaseDialog;->heightPercentage:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 53
    invoke-virtual {p0}, Lcom/cyjh/share/dialog/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method protected setDialogSize(FF)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/cyjh/share/dialog/BaseDialog;->widthPercentage:F

    .line 58
    iput p2, p0, Lcom/cyjh/share/dialog/BaseDialog;->heightPercentage:F

    .line 59
    invoke-virtual {p0}, Lcom/cyjh/share/dialog/BaseDialog;->setDialogSize()V

    return-void
.end method

.class public Lcom/cyjh/feedback/lib/base/BaseDialog;
.super Landroid/app/Dialog;
.source "BaseDialog.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BaseDialog"


# instance fields
.field public mContext:Landroid/content/Context;

.field private mDialogHeight:F

.field private mDialogWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const p2, 0x3f4ccccd    # 0.8f

    .line 17
    iput p2, p0, Lcom/cyjh/feedback/lib/base/BaseDialog;->mDialogWidth:F

    .line 18
    iput p2, p0, Lcom/cyjh/feedback/lib/base/BaseDialog;->mDialogHeight:F

    .line 22
    iput-object p1, p0, Lcom/cyjh/feedback/lib/base/BaseDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method private setDialogSize()V
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/cyjh/feedback/lib/base/BaseDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cyjh/feedback/lib/utils/AppDevicesUtils;->getResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/base/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 49
    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Lcom/cyjh/feedback/lib/base/BaseDialog;->mDialogWidth:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 50
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v2, p0, Lcom/cyjh/feedback/lib/base/BaseDialog;->mDialogHeight:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 51
    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/base/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public setBlurEffect(F)V
    .locals 2

    .line 35
    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/base/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 38
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 p1, 0x2

    .line 40
    invoke-virtual {v0, p1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public setDialogSize(FF)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/cyjh/feedback/lib/base/BaseDialog;->mDialogWidth:F

    .line 56
    iput p2, p0, Lcom/cyjh/feedback/lib/base/BaseDialog;->mDialogHeight:F

    .line 57
    invoke-direct {p0}, Lcom/cyjh/feedback/lib/base/BaseDialog;->setDialogSize()V

    return-void
.end method

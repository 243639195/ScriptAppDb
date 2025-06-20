.class public Lcom/ds/daisi/dialog/BaseDialog;
.super Landroid/app/Dialog;
.source "BaseDialog.java"

# interfaces
.implements Lcom/ds/daisi/constant/APPConstant;


# instance fields
.field protected commonLog:Lcom/ds/daisi/log/CommonLog;

.field private heightPercentage:F

.field protected mAppContext:Lcom/ds/daisi/AppContext;

.field private widthPercentage:F


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 17
    new-instance p2, Lcom/ds/daisi/log/CommonLog;

    invoke-direct {p2}, Lcom/ds/daisi/log/CommonLog;-><init>()V

    iput-object p2, p0, Lcom/ds/daisi/dialog/BaseDialog;->commonLog:Lcom/ds/daisi/log/CommonLog;

    const p2, 0x3f4ccccd    # 0.8f

    .line 20
    iput p2, p0, Lcom/ds/daisi/dialog/BaseDialog;->widthPercentage:F

    .line 21
    iput p2, p0, Lcom/ds/daisi/dialog/BaseDialog;->heightPercentage:F

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/ds/daisi/AppContext;

    iput-object p1, p0, Lcom/ds/daisi/dialog/BaseDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/BaseDialog;->setBlurEffect()V

    return-void
.end method

.method protected setBlurEffect()V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 46
    invoke-virtual {p0, v0}, Lcom/ds/daisi/dialog/BaseDialog;->setBlurEffect(F)V

    return-void
.end method

.method protected setBlurEffect(F)V
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 40
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 p1, 0x2

    .line 42
    invoke-virtual {v0, p1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method protected setDialogSize()V
    .locals 4

    .line 50
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/BaseDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ds/daisi/util/AppDeviceUtils;->getResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 51
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 52
    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Lcom/ds/daisi/dialog/BaseDialog;->widthPercentage:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 53
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v2, p0, Lcom/ds/daisi/dialog/BaseDialog;->heightPercentage:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 54
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method protected setDialogSize(FF)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/ds/daisi/dialog/BaseDialog;->widthPercentage:F

    .line 59
    iput p2, p0, Lcom/ds/daisi/dialog/BaseDialog;->heightPercentage:F

    .line 60
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/BaseDialog;->setDialogSize()V

    return-void
.end method

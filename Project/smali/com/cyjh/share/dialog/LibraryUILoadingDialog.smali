.class public Lcom/cyjh/share/dialog/LibraryUILoadingDialog;
.super Lcom/cyjh/share/dialog/BaseDialog;
.source "LibraryUILoadingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ANDROID_SDK_19:I = 0x13

.field private static final ANDROID_SDK_24:I = 0x18

.field public static final TAG:Ljava/lang/String; = "LibraryUILoadingDialog"


# instance fields
.field public mContext:Landroid/content/Context;

.field private mSlLoadingView:Lcom/cyjh/share/view/SlLoadingView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    sget v0, Lcom/cyjh/share/R$style;->Theme_Dialog:I

    invoke-direct {p0, p1, v0}, Lcom/cyjh/share/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 25
    iput-object p1, p0, Lcom/cyjh/share/dialog/LibraryUILoadingDialog;->mContext:Landroid/content/Context;

    .line 26
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/cyjh/share/dialog/LibraryUILoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7f6

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    .line 28
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    .line 29
    invoke-virtual {p0}, Lcom/cyjh/share/dialog/LibraryUILoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 30
    invoke-virtual {p0}, Lcom/cyjh/share/dialog/LibraryUILoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d5

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/cyjh/share/dialog/LibraryUILoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 34
    invoke-virtual {p0}, Lcom/cyjh/share/dialog/LibraryUILoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d2

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private initView()V
    .locals 1

    .line 50
    sget v0, Lcom/cyjh/share/R$id;->slLoadingView:I

    invoke-virtual {p0, v0}, Lcom/cyjh/share/dialog/LibraryUILoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/share/view/SlLoadingView;

    iput-object v0, p0, Lcom/cyjh/share/dialog/LibraryUILoadingDialog;->mSlLoadingView:Lcom/cyjh/share/view/SlLoadingView;

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, v0}, Lcom/cyjh/share/dialog/LibraryUILoadingDialog;->setCancelable(Z)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 61
    invoke-super {p0}, Lcom/cyjh/share/dialog/BaseDialog;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Lcom/cyjh/share/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget p1, Lcom/cyjh/share/R$layout;->dialog_library_ui_loading:I

    invoke-virtual {p0, p1}, Lcom/cyjh/share/dialog/LibraryUILoadingDialog;->setContentView(I)V

    const p1, 0x3e4ccccd    # 0.2f

    .line 43
    invoke-virtual {p0, p1}, Lcom/cyjh/share/dialog/LibraryUILoadingDialog;->setBlurEffect(F)V

    const p1, 0x3f4ccccd    # 0.8f

    const v0, 0x3f19999a    # 0.6f

    .line 44
    invoke-virtual {p0, p1, v0}, Lcom/cyjh/share/dialog/LibraryUILoadingDialog;->setDialogSize(FF)V

    .line 45
    invoke-direct {p0}, Lcom/cyjh/share/dialog/LibraryUILoadingDialog;->initView()V

    return-void
.end method

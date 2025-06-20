.class public Lcom/ds/daisi/dialog/DownloadDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "DownloadDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/dialog/DownloadDialogFragment$OnDownloadClickListener;
    }
.end annotation


# instance fields
.field private downloadHandler:Lcom/lidroid/xutils/http/HttpHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/http/HttpHandler<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonDownload:Lcom/cyjh/share/view/SubmitProcessButton;

.field private mDownloadOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnDownloadClickListener:Lcom/ds/daisi/dialog/DownloadDialogFragment$OnDownloadClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 70
    new-instance v0, Lcom/ds/daisi/dialog/DownloadDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/ds/daisi/dialog/DownloadDialogFragment$1;-><init>(Lcom/ds/daisi/dialog/DownloadDialogFragment;)V

    iput-object v0, p0, Lcom/ds/daisi/dialog/DownloadDialogFragment;->mDownloadOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/ds/daisi/dialog/DownloadDialogFragment;)Lcom/cyjh/share/view/SubmitProcessButton;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ds/daisi/dialog/DownloadDialogFragment;->mButtonDownload:Lcom/cyjh/share/view/SubmitProcessButton;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ds/daisi/dialog/DownloadDialogFragment;)Lcom/ds/daisi/dialog/DownloadDialogFragment$OnDownloadClickListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ds/daisi/dialog/DownloadDialogFragment;->mOnDownloadClickListener:Lcom/ds/daisi/dialog/DownloadDialogFragment$OnDownloadClickListener;

    return-object p0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/DownloadDialogFragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f100141

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/cyjh/share/view/SubmitProcessButton;

    iput-object p1, p0, Lcom/ds/daisi/dialog/DownloadDialogFragment;->mButtonDownload:Lcom/cyjh/share/view/SubmitProcessButton;

    .line 45
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/DownloadDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "com.cyjh.gundam"

    invoke-static {p1, v0}, Lcom/ds/daisi/util/AppDeviceUtils;->isAInstallPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/ds/daisi/dialog/DownloadDialogFragment;->mButtonDownload:Lcom/cyjh/share/view/SubmitProcessButton;

    const-string v0, "\u542f\u52a8"

    invoke-virtual {p1, v0}, Lcom/cyjh/share/view/SubmitProcessButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/dialog/DownloadDialogFragment;->downloadHandler:Lcom/lidroid/xutils/http/HttpHandler;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ds/daisi/dialog/DownloadDialogFragment;->downloadHandler:Lcom/lidroid/xutils/http/HttpHandler;

    invoke-virtual {p1}, Lcom/lidroid/xutils/http/HttpHandler;->getState()Lcom/lidroid/xutils/http/HttpHandler$State;

    move-result-object p1

    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->SUCCESS:Lcom/lidroid/xutils/http/HttpHandler$State;

    if-ne p1, v0, :cond_1

    .line 48
    iget-object p1, p0, Lcom/ds/daisi/dialog/DownloadDialogFragment;->mButtonDownload:Lcom/cyjh/share/view/SubmitProcessButton;

    const-string v0, "\u5b89\u88c5"

    invoke-virtual {p1, v0}, Lcom/cyjh/share/view/SubmitProcessButton;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ds/daisi/dialog/DownloadDialogFragment;->mButtonDownload:Lcom/cyjh/share/view/SubmitProcessButton;

    iget-object v0, p0, Lcom/ds/daisi/dialog/DownloadDialogFragment;->mDownloadOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/cyjh/share/view/SubmitProcessButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/DownloadDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const p3, 0x7f04005a

    .line 37
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected setDialogSize()V
    .locals 4

    .line 55
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/DownloadDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ds/daisi/util/AppDeviceUtils;->getResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/DownloadDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 57
    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    const v3, 0x3f4ccccd    # 0.8f

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 58
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 59
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/DownloadDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setHttpHandler(Lcom/lidroid/xutils/http/HttpHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/http/HttpHandler<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/ds/daisi/dialog/DownloadDialogFragment;->downloadHandler:Lcom/lidroid/xutils/http/HttpHandler;

    return-void
.end method

.method public setOnDownloadClickListener(Lcom/ds/daisi/dialog/DownloadDialogFragment$OnDownloadClickListener;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/ds/daisi/dialog/DownloadDialogFragment;->mOnDownloadClickListener:Lcom/ds/daisi/dialog/DownloadDialogFragment$OnDownloadClickListener;

    return-void
.end method

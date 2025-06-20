.class public Lcom/ds/daisi/manager/DialogManager;
.super Ljava/lang/Object;
.source "DialogManager.java"


# static fields
.field public static final ALPHA_VALUE:F = 0.6f

.field public static dialogManager:Lcom/ds/daisi/manager/DialogManager;


# instance fields
.field public progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ds/daisi/manager/DialogManager;
    .locals 1

    .line 26
    sget-object v0, Lcom/ds/daisi/manager/DialogManager;->dialogManager:Lcom/ds/daisi/manager/DialogManager;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/ds/daisi/manager/DialogManager;

    invoke-direct {v0}, Lcom/ds/daisi/manager/DialogManager;-><init>()V

    sput-object v0, Lcom/ds/daisi/manager/DialogManager;->dialogManager:Lcom/ds/daisi/manager/DialogManager;

    .line 29
    :cond_0
    sget-object v0, Lcom/ds/daisi/manager/DialogManager;->dialogManager:Lcom/ds/daisi/manager/DialogManager;

    return-object v0
.end method

.method private setBackgroundShadow(Landroid/app/AlertDialog;)V
    .locals 2

    .line 51
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    .line 53
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x2

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method private showProgressDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/ds/daisi/manager/DialogManager;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ds/daisi/manager/DialogManager;->progressDialog:Landroid/app/ProgressDialog;

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/manager/DialogManager;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 73
    iget-object p1, p0, Lcom/ds/daisi/manager/DialogManager;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method


# virtual methods
.method public dismissProgressDialog()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/ds/daisi/manager/DialogManager;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ds/daisi/manager/DialogManager;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/ds/daisi/manager/DialogManager;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/ds/daisi/manager/DialogManager;->progressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public displayDialogMessage(ILjava/lang/String;Landroid/content/Context;Lcom/ds/daisi/listener/BaseTextViewKnownListener;)V
    .locals 2

    const v0, 0x7f040059

    const v1, 0x7f0b0131

    .line 87
    invoke-virtual {p0, p3, v0, v1}, Lcom/ds/daisi/manager/DialogManager;->showMessageDialog(Landroid/content/Context;II)Landroid/app/AlertDialog;

    move-result-object p3

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p3, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 89
    invoke-virtual {p3}, Landroid/app/AlertDialog;->show()V

    const v0, 0x7f10012e

    .line 90
    invoke-virtual {p3, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 91
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f10013f

    .line 92
    invoke-virtual {p3, p2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 93
    invoke-virtual {p4, p3}, Lcom/ds/daisi/listener/BaseTextViewKnownListener;->setAlertDialog(Landroid/app/AlertDialog;)V

    .line 94
    invoke-virtual {p4, p1}, Lcom/ds/daisi/listener/BaseTextViewKnownListener;->setReturnCode(I)V

    .line 95
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showMessageDialog(Landroid/content/Context;II)Landroid/app/AlertDialog;
    .locals 1

    .line 39
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 41
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 42
    invoke-direct {p0, p1}, Lcom/ds/daisi/manager/DialogManager;->setBackgroundShadow(Landroid/app/AlertDialog;)V

    return-object p1
.end method

.method public showProgressDialog(Landroid/content/Context;I)V
    .locals 0

    .line 64
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/ds/daisi/manager/DialogManager;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

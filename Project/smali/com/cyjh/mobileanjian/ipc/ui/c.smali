.class public final Lcom/cyjh/mobileanjian/ipc/ui/c;
.super Ljava/lang/Object;
.source "FloatInputDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mobileanjian/ipc/ui/c$a;
    }
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/EditText;

.field c:Lcom/cyjh/mobileanjian/ipc/ui/c$a;

.field d:Landroid/view/WindowManager;

.field private e:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/ui/c$a;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->c:Lcom/cyjh/mobileanjian/ipc/ui/c$a;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lcom/cyjh/mqsdk/R$layout;->dialog_input:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->a:Landroid/view/View;

    .line 37
    iget-object p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->a:Landroid/view/View;

    sget v0, Lcom/cyjh/mqsdk/R$id;->prompt:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->a:Landroid/view/View;

    sget p3, Lcom/cyjh/mqsdk/R$id;->et_input:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->b:Landroid/widget/EditText;

    .line 40
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->a:Landroid/view/View;

    sget p3, Lcom/cyjh/mqsdk/R$id;->single_ok_button:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/cyjh/mobileanjian/ipc/ui/c$1;

    invoke-direct {p3, p0}, Lcom/cyjh/mobileanjian/ipc/ui/c$1;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/c;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p2, "window"

    .line 50
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->d:Landroid/view/WindowManager;

    .line 1066
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    .line 1067
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_0

    .line 1068
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 p2, 0x7f6

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 1070
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-ge p1, p2, :cond_1

    .line 1072
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 p2, 0x7d5

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 1075
    :cond_1
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 p2, 0x7d2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1078
    :goto_0
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/4 p2, 0x1

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1081
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 p2, 0x11

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1083
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/4 p2, 0x0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1084
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1085
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1086
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/4 p2, -0x1

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1087
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method

.method private static synthetic a(Lcom/cyjh/mobileanjian/ipc/ui/c;)Lcom/cyjh/mobileanjian/ipc/ui/c$a;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->c:Lcom/cyjh/mobileanjian/ipc/ui/c$a;

    return-object p0
.end method

.method private static synthetic b(Lcom/cyjh/mobileanjian/ipc/ui/c;)Landroid/widget/EditText;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->b:Landroid/widget/EditText;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->d:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 66
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 70
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    .line 72
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 81
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 83
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 84
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 85
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 86
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 87
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method

.method private static synthetic c(Lcom/cyjh/mobileanjian/ipc/ui/c;)V
    .locals 1

    .line 2061
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->d:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->a:Landroid/view/View;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->d:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/c;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

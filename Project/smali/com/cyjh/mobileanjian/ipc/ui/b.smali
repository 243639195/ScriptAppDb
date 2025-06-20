.class public final Lcom/cyjh/mobileanjian/ipc/ui/b;
.super Ljava/lang/Object;
.source "FloatAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mobileanjian/ipc/ui/b$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x0

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x3


# instance fields
.field i:Lcom/cyjh/mobileanjian/ipc/ui/b$a;

.field private j:Landroid/view/WindowManager;

.field private k:Landroid/view/WindowManager$LayoutParams;

.field private l:Landroid/view/View;

.field private m:I

.field private n:I

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/Button;

.field private s:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/cyjh/mobileanjian/ipc/ui/b$a;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p4, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->i:Lcom/cyjh/mobileanjian/ipc/ui/b$a;

    const-string p4, "window"

    .line 57
    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/WindowManager;

    iput-object p4, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->j:Landroid/view/WindowManager;

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p4, Lcom/cyjh/mqsdk/R$layout;->dialog_alert:I

    const/4 v0, 0x0

    invoke-virtual {p1, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    .line 72
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    sget p4, Lcom/cyjh/mqsdk/R$id;->prompt:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1158
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    .line 1159
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_0

    .line 1160
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    const/16 p2, 0x7f6

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 1162
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-ge p1, p2, :cond_1

    .line 1164
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    const/16 p2, 0x7d5

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 1167
    :cond_1
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    const/16 p2, 0x7d2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1170
    :goto_0
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    const/4 p2, 0x1

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1173
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    const/16 p2, 0x10

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1175
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    const/4 p2, 0x0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1176
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1177
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1178
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    const/4 p2, -0x1

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1179
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 p1, 0x8

    packed-switch p3, :pswitch_data_0

    .line 99
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    sget p4, Lcom/cyjh/mqsdk/R$id;->layout_type2:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    sget p4, Lcom/cyjh/mqsdk/R$id;->layout_type3:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    sget p2, Lcom/cyjh/mqsdk/R$id;->single_ok_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->q:Landroid/widget/Button;

    goto/16 :goto_1

    .line 91
    :pswitch_0
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    sget p4, Lcom/cyjh/mqsdk/R$id;->single_ok_button:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    sget p4, Lcom/cyjh/mqsdk/R$id;->layout_type2:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    sget p2, Lcom/cyjh/mqsdk/R$id;->yes_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->q:Landroid/widget/Button;

    .line 94
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    sget p2, Lcom/cyjh/mqsdk/R$id;->no_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->r:Landroid/widget/Button;

    .line 95
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    sget p2, Lcom/cyjh/mqsdk/R$id;->cancel_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->s:Landroid/widget/Button;

    goto :goto_1

    .line 83
    :pswitch_1
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    sget p4, Lcom/cyjh/mqsdk/R$id;->single_ok_button:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    sget p4, Lcom/cyjh/mqsdk/R$id;->layout_type3:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    sget p2, Lcom/cyjh/mqsdk/R$id;->positive_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->q:Landroid/widget/Button;

    .line 86
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    sget p2, Lcom/cyjh/mqsdk/R$id;->negative_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->r:Landroid/widget/Button;

    .line 87
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->q:Landroid/widget/Button;

    sget p2, Lcom/cyjh/mqsdk/R$string;->dialog_yes_button:I

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 88
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->r:Landroid/widget/Button;

    sget p2, Lcom/cyjh/mqsdk/R$string;->dialog_no_button:I

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 77
    :pswitch_2
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    sget p4, Lcom/cyjh/mqsdk/R$id;->single_ok_button:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    sget p4, Lcom/cyjh/mqsdk/R$id;->layout_type3:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    sget p2, Lcom/cyjh/mqsdk/R$id;->positive_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->q:Landroid/widget/Button;

    .line 80
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    sget p2, Lcom/cyjh/mqsdk/R$id;->negative_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->r:Landroid/widget/Button;

    .line 105
    :goto_1
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->q:Landroid/widget/Button;

    if-eqz p1, :cond_2

    .line 107
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->q:Landroid/widget/Button;

    new-instance p2, Lcom/cyjh/mobileanjian/ipc/ui/b$1;

    invoke-direct {p2, p0, p3}, Lcom/cyjh/mobileanjian/ipc/ui/b$1;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/b;I)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    :cond_2
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->r:Landroid/widget/Button;

    if-eqz p1, :cond_3

    .line 120
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->r:Landroid/widget/Button;

    new-instance p2, Lcom/cyjh/mobileanjian/ipc/ui/b$2;

    invoke-direct {p2, p0, p3}, Lcom/cyjh/mobileanjian/ipc/ui/b$2;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/b;I)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    :cond_3
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->s:Landroid/widget/Button;

    if-eqz p1, :cond_4

    .line 133
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->s:Landroid/widget/Button;

    new-instance p2, Lcom/cyjh/mobileanjian/ipc/ui/b$3;

    invoke-direct {p2, p0}, Lcom/cyjh/mobileanjian/ipc/ui/b$3;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/b;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/cyjh/mobileanjian/ipc/ui/b;)V
    .locals 1

    .line 2153
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->j:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic b(Lcom/cyjh/mobileanjian/ipc/ui/b;)Lcom/cyjh/mobileanjian/ipc/ui/b$a;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->i:Lcom/cyjh/mobileanjian/ipc/ui/b$a;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->j:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 158
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    .line 159
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 162
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    .line 164
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 170
    :goto_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 173
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 175
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 176
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 177
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 178
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 179
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->j:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->l:Landroid/view/View;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/b;->k:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

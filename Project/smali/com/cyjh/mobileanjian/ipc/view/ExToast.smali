.class public Lcom/cyjh/mobileanjian/ipc/view/ExToast;
.super Ljava/lang/Object;
.source "ExToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;
    }
.end annotation


# static fields
.field public static final LENGTH_LONG:I = 0xdac

.field public static final LENGTH_SHORT:I = 0x7d0

.field private static final g:I = 0x33


# instance fields
.field private a:Landroid/view/WindowManager;

.field private b:Landroid/view/WindowManager$LayoutParams;

.field private c:Ljava/util/Timer;

.field private d:Landroid/widget/Toast;

.field private e:Z

.field private f:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/CharSequence;

.field private l:I

.field private m:Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->i:I

    .line 32
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->j:I

    const/16 v0, 0x7d0

    .line 35
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->l:I

    .line 157
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;-><init>(Lcom/cyjh/mobileanjian/ipc/view/ExToast;B)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->m:Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;

    const-string v0, "window"

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->a:Landroid/view/WindowManager;

    const-string v0, ""

    .line 40
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->d:Landroid/widget/Toast;

    .line 45
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->c:Ljava/util/Timer;

    .line 1076
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    .line 1077
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1078
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1079
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1080
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1082
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 1085
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    .line 1087
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 1090
    :cond_1
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1092
    :goto_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1096
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_toastDefaultGravity"

    const-string v2, "Integer"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x51

    goto :goto_1

    .line 1098
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->f:I

    .line 1099
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "toast_y_offset"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-nez v0, :cond_3

    sget v0, Lcom/cyjh/mqsdk/R$dimen;->toast_y_offset:I

    :cond_3
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->h:I

    .line 1102
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    const-string v0, "Toast"

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(ILjava/lang/CharSequence;IIZ)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 107
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->f:I

    if-ne p1, v0, :cond_0

    .line 108
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 p3, 0x0

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 109
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    iget p3, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->h:I

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 112
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    iput p4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 115
    :goto_0
    invoke-virtual {p0, p2}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->e:Z

    if-eqz p1, :cond_1

    if-eqz p5, :cond_2

    .line 119
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->a:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->d:Landroid/widget/Toast;

    invoke-virtual {p2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 123
    :cond_1
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->a:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->d:Landroid/widget/Toast;

    invoke-virtual {p2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .line 76
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    .line 77
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 78
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 79
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 80
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 85
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    .line 87
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 96
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_toastDefaultGravity"

    const-string v2, "Integer"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x51

    goto :goto_1

    .line 98
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->f:I

    .line 99
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "toast_y_offset"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-nez v0, :cond_3

    sget v0, Lcom/cyjh/mqsdk/R$dimen;->toast_y_offset:I

    :cond_3
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->h:I

    .line 102
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->b:Landroid/view/WindowManager$LayoutParams;

    const-string v0, "Toast"

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static makeText(Landroid/content/Context;II)Lcom/cyjh/mobileanjian/ipc/view/ExToast;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    move-result-object p0

    return-object p0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/cyjh/mobileanjian/ipc/view/ExToast;
    .locals 1

    .line 62
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    invoke-direct {v0, p0}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {v0, p2}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->setDuration(I)V

    return-object v0
.end method


# virtual methods
.method public hide()V
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->d:Landroid/widget/Toast;

    monitor-enter v0

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->m:Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;->cancel()Z

    .line 169
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->d:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->a:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->d:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v1, 0x0

    .line 172
    iput-boolean v1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->e:Z

    .line 173
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDuration(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->l:I

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 51
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->k:Ljava/lang/CharSequence;

    .line 52
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->d:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 6

    .line 151
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->f:I

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->k:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->a(ILjava/lang/CharSequence;IIZ)V

    .line 152
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;-><init>(Lcom/cyjh/mobileanjian/ipc/view/ExToast;B)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->m:Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;

    .line 153
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->c:Ljava/util/Timer;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->m:Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public show(Ljava/lang/CharSequence;III)V
    .locals 11

    .line 131
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->d:Landroid/widget/Toast;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez p2, :cond_0

    .line 132
    :try_start_0
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->i:I

    if-ltz v3, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_0
    :goto_0
    if-gez p3, :cond_1

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->j:I

    if-ltz v3, :cond_2

    :cond_1
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->i:I

    if-ne p2, v3, :cond_3

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->j:I

    if-ne p3, v3, :cond_3

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-ltz p2, :cond_5

    if-gez p3, :cond_4

    goto :goto_2

    :cond_4
    const/16 v4, 0x33

    const/16 v6, 0x33

    goto :goto_3

    .line 133
    :cond_5
    :goto_2
    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->f:I

    move v6, v4

    .line 134
    :goto_3
    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->i:I

    .line 135
    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->j:I

    .line 136
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->m:Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;

    invoke-virtual {v4}, Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;->cancel()Z

    xor-int/lit8 v10, v3, 0x1

    move-object v5, p0

    move-object v7, p1

    move v8, p2

    move v9, p3

    .line 137
    invoke-direct/range {v5 .. v10}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->a(ILjava/lang/CharSequence;IIZ)V

    .line 138
    iput-boolean v2, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->e:Z

    .line 140
    new-instance p1, Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;

    invoke-direct {p1, p0, v1}, Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;-><init>(Lcom/cyjh/mobileanjian/ipc/view/ExToast;B)V

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->m:Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;

    const/16 p1, 0x7d0

    if-gez p4, :cond_6

    const p4, 0x7fffffff

    goto :goto_4

    :cond_6
    if-ltz p4, :cond_7

    if-ge p4, p1, :cond_7

    const/16 p4, 0x7d0

    .line 146
    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->c:Ljava/util/Timer;

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->m:Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;

    int-to-long p3, p4

    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 147
    monitor-exit v0

    return-void

    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

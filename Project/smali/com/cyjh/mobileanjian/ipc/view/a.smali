.class public final Lcom/cyjh/mobileanjian/ipc/view/a;
.super Ljava/lang/Object;
.source "ExToast0.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mobileanjian/ipc/view/a$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x2

.field public static final c:I = 0x4


# instance fields
.field private d:Landroid/widget/Toast;

.field private e:Landroid/content/Context;

.field private f:Z

.field private g:I

.field private h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private l:I

.field private m:I

.field private n:Ljava/lang/Object;

.field private o:Ljava/lang/reflect/Method;

.field private p:Ljava/lang/reflect/Method;

.field private q:Landroid/view/WindowManager;

.field private r:Landroid/view/WindowManager$LayoutParams;

.field private s:Landroid/view/WindowManager$LayoutParams;

.field private t:Landroid/view/View;

.field private u:Landroid/os/Handler;

.field private v:Ljava/util/Timer;

.field private w:Lcom/cyjh/mobileanjian/ipc/view/a$a;

.field private x:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->f:Z

    const/4 v1, -0x1

    .line 28
    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->g:I

    const/4 v1, 0x2

    .line 29
    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->h:I

    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->s:Landroid/view/WindowManager$LayoutParams;

    .line 44
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->u:Landroid/os/Handler;

    .line 45
    new-instance v1, Ljava/util/Timer;

    const-string v2, "hideTimer"

    invoke-direct {v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->v:Ljava/util/Timer;

    .line 46
    new-instance v1, Lcom/cyjh/mobileanjian/ipc/view/a$a;

    invoke-direct {v1, p0, v0}, Lcom/cyjh/mobileanjian/ipc/view/a$a;-><init>(Lcom/cyjh/mobileanjian/ipc/view/a;B)V

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->w:Lcom/cyjh/mobileanjian/ipc/view/a$a;

    .line 79
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/view/a$1;

    invoke-direct {v0, p0}, Lcom/cyjh/mobileanjian/ipc/view/a$1;-><init>(Lcom/cyjh/mobileanjian/ipc/view/a;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->x:Ljava/lang/Runnable;

    .line 50
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->e:Landroid/content/Context;

    .line 51
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {v0}, Landroid/widget/Toast;->getGravity()I

    move-result p1

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->i:I

    .line 53
    invoke-virtual {v0}, Landroid/widget/Toast;->getXOffset()I

    move-result p1

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->j:I

    .line 54
    invoke-virtual {v0}, Landroid/widget/Toast;->getYOffset()I

    move-result p1

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->k:I

    .line 56
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->j:I

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->l:I

    .line 57
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->k:I

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->m:I

    return-void
.end method

.method private static a(Landroid/content/Context;II)Lcom/cyjh/mobileanjian/ipc/view/a;
    .locals 1

    .line 72
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 73
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/view/a;

    invoke-direct {v0, p0}, Lcom/cyjh/mobileanjian/ipc/view/a;-><init>(Landroid/content/Context;)V

    .line 74
    iput-object p1, v0, Lcom/cyjh/mobileanjian/ipc/view/a;->d:Landroid/widget/Toast;

    .line 75
    iput p2, v0, Lcom/cyjh/mobileanjian/ipc/view/a;->h:I

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/cyjh/mobileanjian/ipc/view/a;
    .locals 1

    .line 63
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 64
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/view/a;

    invoke-direct {v0, p0}, Lcom/cyjh/mobileanjian/ipc/view/a;-><init>(Landroid/content/Context;)V

    .line 65
    iput-object p1, v0, Lcom/cyjh/mobileanjian/ipc/view/a;->d:Landroid/widget/Toast;

    .line 66
    iput p2, v0, Lcom/cyjh/mobileanjian/ipc/view/a;->h:I

    return-object v0
.end method

.method private a(I)V
    .locals 0

    .line 187
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->h:I

    return-void
.end method

.method private a(III)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->d:Landroid/widget/Toast;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/Toast;->setGravity(III)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->d:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->d:Landroid/widget/Toast;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mTN"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 282
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->d:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->n:Ljava/lang/Object;

    .line 283
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->n:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mParams"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 285
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->n:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 291
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception p1

    .line 288
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->d:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;II)V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->e:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x1

    if-gez p2, :cond_0

    .line 93
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->l:I

    if-ltz v2, :cond_2

    :cond_0
    if-gez p3, :cond_1

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->m:I

    if-ltz v2, :cond_2

    :cond_1
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->l:I

    if-ne p2, v2, :cond_3

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->m:I

    if-ne p3, v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-ltz p2, :cond_5

    if-gez p3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v3, 0x1

    .line 95
    :goto_2
    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->l:I

    .line 96
    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->m:I

    if-eqz v2, :cond_6

    .line 100
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/view/a;->a(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 103
    :cond_6
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/view/a;->a()V

    .line 104
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->e:Landroid/content/Context;

    invoke-static {v2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->d:Landroid/widget/Toast;

    if-eqz v3, :cond_7

    .line 107
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->d:Landroid/widget/Toast;

    iget p2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->i:I

    iget p3, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->j:I

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->k:I

    invoke-virtual {p1, p2, p3, v2}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_3

    .line 110
    :cond_7
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->d:Landroid/widget/Toast;

    const/16 v2, 0x33

    invoke-virtual {p1, v2, p2, p3}, Landroid/widget/Toast;->setGravity(III)V

    .line 1132
    :goto_3
    :try_start_0
    iget-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->f:Z

    if-eqz p1, :cond_8

    .line 1134
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->w:Lcom/cyjh/mobileanjian/ipc/view/a$a;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/view/a$a;->cancel()Z

    .line 1135
    new-instance p1, Lcom/cyjh/mobileanjian/ipc/view/a$a;

    invoke-direct {p1, p0, v1}, Lcom/cyjh/mobileanjian/ipc/view/a$a;-><init>(Lcom/cyjh/mobileanjian/ipc/view/a;B)V

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->w:Lcom/cyjh/mobileanjian/ipc/view/a$a;

    .line 1136
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->v:Ljava/util/Timer;

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->w:Lcom/cyjh/mobileanjian/ipc/view/a$a;

    iget p3, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->h:I

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long v0, p3

    invoke-virtual {p1, p2, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    .line 1235
    :cond_8
    :try_start_1
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->d:Landroid/widget/Toast;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "mTN"

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 1236
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1237
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->d:Landroid/widget/Toast;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->n:Ljava/lang/Object;

    .line 1238
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->n:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "show"

    new-array p3, v1, [Ljava/lang/Class;

    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->o:Ljava/lang/reflect/Method;

    .line 1239
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->n:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "hide"

    new-array p3, v1, [Ljava/lang/Class;

    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->p:Ljava/lang/reflect/Method;

    .line 1241
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->n:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "mParams"

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 1242
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1243
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->n:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->r:Landroid/view/WindowManager$LayoutParams;

    .line 1245
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->s:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_9

    .line 1247
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->r:Landroid/view/WindowManager$LayoutParams;

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->s:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1248
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->r:Landroid/view/WindowManager$LayoutParams;

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->s:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1249
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->r:Landroid/view/WindowManager$LayoutParams;

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->s:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1250
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->r:Landroid/view/WindowManager$LayoutParams;

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->s:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1251
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->r:Landroid/view/WindowManager$LayoutParams;

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->s:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1255
    :cond_9
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->g:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_a

    .line 1257
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->r:Landroid/view/WindowManager$LayoutParams;

    iget p2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->g:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1262
    :cond_a
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->n:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "mNextView"

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 1263
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1264
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->n:Ljava/lang/Object;

    iget-object p3, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->d:Landroid/widget/Toast;

    invoke-virtual {p3}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 1269
    :try_start_2
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1141
    :goto_4
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->o:Ljava/lang/reflect/Method;

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->n:Ljava/lang/Object;

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->f:Z

    .line 1149
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->h:I

    if-lez p1, :cond_b

    .line 1151
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->w:Lcom/cyjh/mobileanjian/ipc/view/a$a;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/view/a$a;->cancel()Z

    .line 1152
    new-instance p1, Lcom/cyjh/mobileanjian/ipc/view/a$a;

    invoke-direct {p1, p0, v1}, Lcom/cyjh/mobileanjian/ipc/view/a$a;-><init>(Lcom/cyjh/mobileanjian/ipc/view/a;B)V

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->w:Lcom/cyjh/mobileanjian/ipc/view/a$a;

    .line 1153
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->v:Ljava/util/Timer;

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->w:Lcom/cyjh/mobileanjian/ipc/view/a$a;

    iget p3, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->h:I

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long v0, p3

    invoke-virtual {p1, p2, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_b
    return-void

    :catch_1
    move-exception p1

    .line 1163
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1164
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/view/a;->a()V

    .line 1165
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->v:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 1166
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->v:Ljava/util/Timer;

    return-void

    :catch_2
    move-exception p1

    .line 1160
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return-void

    :catch_3
    move-exception p1

    .line 1157
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method

.method private b()V
    .locals 5

    .line 132
    :try_start_0
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->w:Lcom/cyjh/mobileanjian/ipc/view/a$a;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/view/a$a;->cancel()Z

    .line 135
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/view/a$a;

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/view/a$a;-><init>(Lcom/cyjh/mobileanjian/ipc/view/a;B)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->w:Lcom/cyjh/mobileanjian/ipc/view/a$a;

    .line 136
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->v:Ljava/util/Timer;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->w:Lcom/cyjh/mobileanjian/ipc/view/a$a;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->h:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2235
    :try_start_1
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->d:Landroid/widget/Toast;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mTN"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 2236
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2237
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->d:Landroid/widget/Toast;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->n:Ljava/lang/Object;

    .line 2238
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->n:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "show"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->o:Ljava/lang/reflect/Method;

    .line 2239
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->n:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "hide"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->p:Ljava/lang/reflect/Method;

    .line 2241
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->n:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mParams"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 2242
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2243
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->n:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    iput-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->r:Landroid/view/WindowManager$LayoutParams;

    .line 2245
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->s:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_1

    .line 2247
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->r:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->s:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2248
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->r:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->s:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2249
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->r:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->s:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2250
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->r:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->s:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2251
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->r:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->s:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2255
    :cond_1
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->g:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 2257
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->r:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->g:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2262
    :cond_2
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->n:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mNextView"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 2263
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2264
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->n:Ljava/lang/Object;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->d:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 2269
    :try_start_2
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 141
    :goto_0
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->o:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->n:Ljava/lang/Object;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->f:Z

    .line 149
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->h:I

    if-lez v0, :cond_3

    .line 151
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->w:Lcom/cyjh/mobileanjian/ipc/view/a$a;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/view/a$a;->cancel()Z

    .line 152
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/view/a$a;

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/view/a$a;-><init>(Lcom/cyjh/mobileanjian/ipc/view/a;B)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->w:Lcom/cyjh/mobileanjian/ipc/view/a$a;

    .line 153
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->v:Ljava/util/Timer;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->w:Lcom/cyjh/mobileanjian/ipc/view/a$a;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->h:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    return-void

    :catch_1
    move-exception v0

    .line 163
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 164
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/view/a;->a()V

    .line 165
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->v:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 166
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->v:Ljava/util/Timer;

    return-void

    :catch_2
    move-exception v0

    .line 160
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return-void

    :catch_3
    move-exception v0

    .line 157
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method

.method private b(I)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->e:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/view/a;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private b(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->s:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method private c()Landroid/view/View;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->d:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private c(I)V
    .locals 0

    .line 207
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->g:I

    return-void
.end method

.method private d()I
    .locals 1

    .line 202
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->g:I

    return v0
.end method

.method private e()V
    .locals 5

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->d:Landroid/widget/Toast;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mTN"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 237
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->d:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->n:Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->n:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "show"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->o:Ljava/lang/reflect/Method;

    .line 239
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->n:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "hide"

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->p:Ljava/lang/reflect/Method;

    .line 241
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->n:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mParams"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 243
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->n:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->r:Landroid/view/WindowManager$LayoutParams;

    .line 245
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->s:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->r:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->s:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 248
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->r:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->s:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 249
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->r:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->s:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 250
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->r:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->s:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 251
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->r:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->s:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 255
    :cond_0
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->g:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 257
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->r:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->g:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->n:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mNextView"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 264
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->n:Ljava/lang/Object;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->d:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 269
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 217
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->p:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->n:Ljava/lang/Object;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 226
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 223
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 228
    :goto_0
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a;->f:Z

    return-void
.end method

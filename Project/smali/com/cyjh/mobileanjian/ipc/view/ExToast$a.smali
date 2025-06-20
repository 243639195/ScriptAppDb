.class final Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;
.super Ljava/util/TimerTask;
.source "ExToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/view/ExToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mobileanjian/ipc/view/ExToast;


# direct methods
.method private constructor <init>(Lcom/cyjh/mobileanjian/ipc/view/ExToast;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;->a:Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyjh/mobileanjian/ipc/view/ExToast;B)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;-><init>(Lcom/cyjh/mobileanjian/ipc/view/ExToast;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/ExToast$a;->a:Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->hide()V

    return-void
.end method

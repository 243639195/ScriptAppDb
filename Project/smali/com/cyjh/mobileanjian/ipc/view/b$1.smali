.class final Lcom/cyjh/mobileanjian/ipc/view/b$1;
.super Ljava/lang/Object;
.source "ShowTapPic.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/view/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mobileanjian/ipc/view/b;


# direct methods
.method constructor <init>(Lcom/cyjh/mobileanjian/ipc/view/b;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/b$1;->a:Lcom/cyjh/mobileanjian/ipc/view/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 83
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/b$1;->a:Lcom/cyjh/mobileanjian/ipc/view/b;

    .line 1022
    iget-object p1, p1, Lcom/cyjh/mobileanjian/ipc/view/b;->a:Landroid/view/WindowManager;

    .line 83
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/b$1;->a:Lcom/cyjh/mobileanjian/ipc/view/b;

    .line 2022
    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/view/b;->b:Landroid/view/View;

    .line 83
    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    return p1
.end method

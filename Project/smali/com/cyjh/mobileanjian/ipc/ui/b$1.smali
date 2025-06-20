.class final Lcom/cyjh/mobileanjian/ipc/ui/b$1;
.super Ljava/lang/Object;
.source "FloatAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mobileanjian/ipc/ui/b;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/cyjh/mobileanjian/ipc/ui/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/cyjh/mobileanjian/ipc/ui/b;


# direct methods
.method constructor <init>(Lcom/cyjh/mobileanjian/ipc/ui/b;I)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b$1;->b:Lcom/cyjh/mobileanjian/ipc/ui/b;

    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/b$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 112
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b$1;->b:Lcom/cyjh/mobileanjian/ipc/ui/b;

    .line 1020
    iget-object p1, p1, Lcom/cyjh/mobileanjian/ipc/ui/b;->i:Lcom/cyjh/mobileanjian/ipc/ui/b$a;

    if-eqz p1, :cond_2

    .line 113
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b$1;->b:Lcom/cyjh/mobileanjian/ipc/ui/b;

    .line 2020
    iget-object p1, p1, Lcom/cyjh/mobileanjian/ipc/ui/b;->i:Lcom/cyjh/mobileanjian/ipc/ui/b$a;

    .line 113
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b$1;->a:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b$1;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/b$a;->a(I)V

    .line 114
    :cond_2
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b$1;->b:Lcom/cyjh/mobileanjian/ipc/ui/b;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/b;->a(Lcom/cyjh/mobileanjian/ipc/ui/b;)V

    return-void
.end method

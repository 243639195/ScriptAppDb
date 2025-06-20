.class final Lcom/cyjh/mobileanjian/ipc/ui/b$2;
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

    .line 121
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b$2;->b:Lcom/cyjh/mobileanjian/ipc/ui/b;

    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/b$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 125
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b$2;->b:Lcom/cyjh/mobileanjian/ipc/ui/b;

    .line 1020
    iget-object p1, p1, Lcom/cyjh/mobileanjian/ipc/ui/b;->i:Lcom/cyjh/mobileanjian/ipc/ui/b$a;

    if-eqz p1, :cond_1

    .line 126
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b$2;->b:Lcom/cyjh/mobileanjian/ipc/ui/b;

    .line 2020
    iget-object p1, p1, Lcom/cyjh/mobileanjian/ipc/ui/b;->i:Lcom/cyjh/mobileanjian/ipc/ui/b$a;

    .line 126
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/b$2;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    invoke-interface {p1, v1}, Lcom/cyjh/mobileanjian/ipc/ui/b$a;->a(I)V

    .line 127
    :cond_1
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b$2;->b:Lcom/cyjh/mobileanjian/ipc/ui/b;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/b;->a(Lcom/cyjh/mobileanjian/ipc/ui/b;)V

    return-void
.end method

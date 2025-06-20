.class final Lcom/cyjh/mobileanjian/ipc/ui/b$3;
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
.field final synthetic a:Lcom/cyjh/mobileanjian/ipc/ui/b;


# direct methods
.method constructor <init>(Lcom/cyjh/mobileanjian/ipc/ui/b;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b$3;->a:Lcom/cyjh/mobileanjian/ipc/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 138
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b$3;->a:Lcom/cyjh/mobileanjian/ipc/ui/b;

    .line 1020
    iget-object p1, p1, Lcom/cyjh/mobileanjian/ipc/ui/b;->i:Lcom/cyjh/mobileanjian/ipc/ui/b$a;

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b$3;->a:Lcom/cyjh/mobileanjian/ipc/ui/b;

    .line 2020
    iget-object p1, p1, Lcom/cyjh/mobileanjian/ipc/ui/b;->i:Lcom/cyjh/mobileanjian/ipc/ui/b$a;

    const/4 v0, 0x1

    .line 139
    invoke-interface {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/b$a;->a(I)V

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/b$3;->a:Lcom/cyjh/mobileanjian/ipc/ui/b;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/b;->a(Lcom/cyjh/mobileanjian/ipc/ui/b;)V

    return-void
.end method

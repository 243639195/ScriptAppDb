.class final Lcom/cyjh/mobileanjian/ipc/ui/k$2;
.super Ljava/lang/Object;
.source "UiShowLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mobileanjian/ipc/ui/k;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mobileanjian/ipc/ui/k;


# direct methods
.method constructor <init>(Lcom/cyjh/mobileanjian/ipc/ui/k;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k$2;->a:Lcom/cyjh/mobileanjian/ipc/ui/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k$2;->a:Lcom/cyjh/mobileanjian/ipc/ui/k;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Lcom/cyjh/mobileanjian/ipc/ui/k;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k$2;->a:Lcom/cyjh/mobileanjian/ipc/ui/k;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Lcom/cyjh/mobileanjian/ipc/ui/k;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.class Lcom/cyjh/share/view/PassWordLayout$1;
.super Ljava/lang/Object;
.source "PassWordLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/share/view/PassWordLayout;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyjh/share/view/PassWordLayout;


# direct methods
.method constructor <init>(Lcom/cyjh/share/view/PassWordLayout;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/cyjh/share/view/PassWordLayout$1;->this$0:Lcom/cyjh/share/view/PassWordLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 106
    iget-object p1, p0, Lcom/cyjh/share/view/PassWordLayout$1;->this$0:Lcom/cyjh/share/view/PassWordLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/cyjh/share/view/PassWordLayout;->setFocusable(Z)V

    .line 107
    iget-object p1, p0, Lcom/cyjh/share/view/PassWordLayout$1;->this$0:Lcom/cyjh/share/view/PassWordLayout;

    invoke-virtual {p1, v0}, Lcom/cyjh/share/view/PassWordLayout;->setFocusableInTouchMode(Z)V

    .line 108
    iget-object p1, p0, Lcom/cyjh/share/view/PassWordLayout$1;->this$0:Lcom/cyjh/share/view/PassWordLayout;

    invoke-virtual {p1}, Lcom/cyjh/share/view/PassWordLayout;->requestFocus()Z

    .line 109
    iget-object p1, p0, Lcom/cyjh/share/view/PassWordLayout$1;->this$0:Lcom/cyjh/share/view/PassWordLayout;

    invoke-virtual {p1}, Lcom/cyjh/share/view/PassWordLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 110
    iget-object v1, p0, Lcom/cyjh/share/view/PassWordLayout$1;->this$0:Lcom/cyjh/share/view/PassWordLayout;

    invoke-virtual {p1, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

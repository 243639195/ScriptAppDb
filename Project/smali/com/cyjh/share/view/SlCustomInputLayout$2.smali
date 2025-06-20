.class Lcom/cyjh/share/view/SlCustomInputLayout$2;
.super Ljava/lang/Object;
.source "SlCustomInputLayout.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/share/view/SlCustomInputLayout;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyjh/share/view/SlCustomInputLayout;


# direct methods
.method constructor <init>(Lcom/cyjh/share/view/SlCustomInputLayout;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/cyjh/share/view/SlCustomInputLayout$2;->this$0:Lcom/cyjh/share/view/SlCustomInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 120
    iget-object p1, p0, Lcom/cyjh/share/view/SlCustomInputLayout$2;->this$0:Lcom/cyjh/share/view/SlCustomInputLayout;

    iget-object p2, p0, Lcom/cyjh/share/view/SlCustomInputLayout$2;->this$0:Lcom/cyjh/share/view/SlCustomInputLayout;

    invoke-static {p2}, Lcom/cyjh/share/view/SlCustomInputLayout;->access$000(Lcom/cyjh/share/view/SlCustomInputLayout;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/cyjh/share/view/SlCustomInputLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/cyjh/share/view/PassWordView;

    if-eqz p1, :cond_1

    .line 122
    iget-object p2, p0, Lcom/cyjh/share/view/SlCustomInputLayout$2;->this$0:Lcom/cyjh/share/view/SlCustomInputLayout;

    invoke-static {p2}, Lcom/cyjh/share/view/SlCustomInputLayout;->access$100(Lcom/cyjh/share/view/SlCustomInputLayout;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/cyjh/share/view/PassWordView;->setmIsShowRemindLine(Z)V

    .line 123
    invoke-virtual {p1}, Lcom/cyjh/share/view/PassWordView;->startInputState()V

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/cyjh/share/view/SlCustomInputLayout$2;->this$0:Lcom/cyjh/share/view/SlCustomInputLayout;

    iget-object p2, p0, Lcom/cyjh/share/view/SlCustomInputLayout$2;->this$0:Lcom/cyjh/share/view/SlCustomInputLayout;

    invoke-static {p2}, Lcom/cyjh/share/view/SlCustomInputLayout;->access$000(Lcom/cyjh/share/view/SlCustomInputLayout;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/cyjh/share/view/SlCustomInputLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/cyjh/share/view/PassWordView;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 128
    invoke-virtual {p1, p2}, Lcom/cyjh/share/view/PassWordView;->setmIsShowRemindLine(Z)V

    .line 129
    invoke-virtual {p1, p2}, Lcom/cyjh/share/view/PassWordView;->updateInputState(Z)V

    :cond_1
    :goto_0
    return-void
.end method

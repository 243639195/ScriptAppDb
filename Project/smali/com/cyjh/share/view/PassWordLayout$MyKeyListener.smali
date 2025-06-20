.class Lcom/cyjh/share/view/PassWordLayout$MyKeyListener;
.super Ljava/lang/Object;
.source "PassWordLayout.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/share/view/PassWordLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyjh/share/view/PassWordLayout;


# direct methods
.method constructor <init>(Lcom/cyjh/share/view/PassWordLayout;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/cyjh/share/view/PassWordLayout$MyKeyListener;->this$0:Lcom/cyjh/share/view/PassWordLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 365
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 366
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x7

    const/4 p3, 0x1

    if-lt p2, p1, :cond_1

    const/16 v0, 0x10

    if-gt p2, v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordLayout$MyKeyListener;->this$0:Lcom/cyjh/share/view/PassWordLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr p2, p1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/share/view/PassWordLayout;->addPwd(Ljava/lang/String;)V

    return p3

    :cond_1
    const/16 p1, 0x43

    if-ne p2, p1, :cond_2

    .line 375
    iget-object p1, p0, Lcom/cyjh/share/view/PassWordLayout$MyKeyListener;->this$0:Lcom/cyjh/share/view/PassWordLayout;

    invoke-virtual {p1}, Lcom/cyjh/share/view/PassWordLayout;->removePwd()V

    return p3

    .line 379
    :cond_2
    iget-object p1, p0, Lcom/cyjh/share/view/PassWordLayout$MyKeyListener;->this$0:Lcom/cyjh/share/view/PassWordLayout;

    invoke-static {p1}, Lcom/cyjh/share/view/PassWordLayout;->access$200(Lcom/cyjh/share/view/PassWordLayout;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 380
    iget-object p2, p0, Lcom/cyjh/share/view/PassWordLayout$MyKeyListener;->this$0:Lcom/cyjh/share/view/PassWordLayout;

    invoke-virtual {p2}, Lcom/cyjh/share/view/PassWordLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return p3

    :cond_3
    return v0
.end method

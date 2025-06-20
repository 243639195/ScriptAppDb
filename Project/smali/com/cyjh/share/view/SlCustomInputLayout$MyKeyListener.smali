.class Lcom/cyjh/share/view/SlCustomInputLayout$MyKeyListener;
.super Ljava/lang/Object;
.source "SlCustomInputLayout.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/share/view/SlCustomInputLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyjh/share/view/SlCustomInputLayout;


# direct methods
.method constructor <init>(Lcom/cyjh/share/view/SlCustomInputLayout;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/cyjh/share/view/SlCustomInputLayout$MyKeyListener;->this$0:Lcom/cyjh/share/view/SlCustomInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 367
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_5

    const-string p1, "key"

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
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

    .line 374
    iget-object v0, p0, Lcom/cyjh/share/view/SlCustomInputLayout$MyKeyListener;->this$0:Lcom/cyjh/share/view/SlCustomInputLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr p2, p1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/share/view/SlCustomInputLayout;->addContent(Ljava/lang/String;)V

    return p3

    :cond_1
    const/16 p1, 0x1d

    const/16 v0, 0x36

    if-lt p2, p1, :cond_2

    if-gt p2, v0, :cond_2

    const-string p1, "key"

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " \u5c0f\u5199\u5b57\u6bcd keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object p1, p0, Lcom/cyjh/share/view/SlCustomInputLayout$MyKeyListener;->this$0:Lcom/cyjh/share/view/SlCustomInputLayout;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cyjh/share/view/SlCustomInputLayout;->addContent(Ljava/lang/String;)V

    return p3

    :cond_2
    const/16 p1, 0x9f

    if-lt p2, p1, :cond_3

    if-gt p2, v0, :cond_3

    const-string p1, "key"

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " \u5c0f\u5199\u5b57\u6bcd keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object p1, p0, Lcom/cyjh/share/view/SlCustomInputLayout$MyKeyListener;->this$0:Lcom/cyjh/share/view/SlCustomInputLayout;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cyjh/share/view/SlCustomInputLayout;->addContent(Ljava/lang/String;)V

    return p3

    :cond_3
    const/16 p1, 0x43

    if-ne p2, p1, :cond_4

    .line 391
    iget-object p1, p0, Lcom/cyjh/share/view/SlCustomInputLayout$MyKeyListener;->this$0:Lcom/cyjh/share/view/SlCustomInputLayout;

    invoke-virtual {p1}, Lcom/cyjh/share/view/SlCustomInputLayout;->removePwd()V

    return p3

    .line 395
    :cond_4
    iget-object p1, p0, Lcom/cyjh/share/view/SlCustomInputLayout$MyKeyListener;->this$0:Lcom/cyjh/share/view/SlCustomInputLayout;

    invoke-static {p1}, Lcom/cyjh/share/view/SlCustomInputLayout;->access$200(Lcom/cyjh/share/view/SlCustomInputLayout;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 396
    iget-object p2, p0, Lcom/cyjh/share/view/SlCustomInputLayout$MyKeyListener;->this$0:Lcom/cyjh/share/view/SlCustomInputLayout;

    invoke-virtual {p2}, Lcom/cyjh/share/view/SlCustomInputLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return p3

    :cond_5
    return v0
.end method

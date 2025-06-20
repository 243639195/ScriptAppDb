.class public Lcom/ime/input/InputKb;
.super Landroid/inputmethodservice/InputMethodService;
.source "InputKb.java"


# static fields
.field public static b:Landroid/os/Handler;


# instance fields
.field a:Landroid/view/inputmethod/EditorInfo;

.field private c:Landroid/inputmethodservice/KeyboardView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 21
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreate()V

    const-string v0, "InputKb"

    const-string v1, "InputKb - onCreate()"

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {}, Lcom/ime/input/a;->a()Lcom/ime/input/a;

    move-result-object v0

    .line 1026
    iput-object p0, v0, Lcom/ime/input/a;->a:Landroid/inputmethodservice/InputMethodService;

    return-void
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/ime/input/InputKb;->c:Landroid/inputmethodservice/KeyboardView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 55
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onDestroy()V

    .line 56
    invoke-static {}, Lcom/ime/input/a;->a()Lcom/ime/input/a;

    move-result-object v0

    const/4 v1, 0x0

    .line 1031
    iput-object v1, v0, Lcom/ime/input/a;->a:Landroid/inputmethodservice/InputMethodService;

    return-void
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 3

    .line 34
    invoke-virtual {p0}, Lcom/ime/input/InputKb;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 35
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/ime/input/InputKb;->a:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/input/InputKb;->a:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x10000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    return v1

    :cond_1
    return v1
.end method

.method public onFinishInputView(Z)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    return-void
.end method

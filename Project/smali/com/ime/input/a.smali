.class public final Lcom/ime/input/a;
.super Ljava/lang/Object;
.source "InputMethodManager.java"


# static fields
.field private static b:Lcom/ime/input/a;


# instance fields
.field public a:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/ime/input/a;->a:Landroid/inputmethodservice/InputMethodService;

    return-void
.end method

.method public static a()Lcom/ime/input/a;
    .locals 1

    .line 19
    sget-object v0, Lcom/ime/input/a;->b:Lcom/ime/input/a;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/ime/input/a;

    invoke-direct {v0}, Lcom/ime/input/a;-><init>()V

    sput-object v0, Lcom/ime/input/a;->b:Lcom/ime/input/a;

    .line 21
    :cond_0
    sget-object v0, Lcom/ime/input/a;->b:Lcom/ime/input/a;

    return-object v0
.end method

.method private a(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/ime/input/a;->a:Landroid/inputmethodservice/InputMethodService;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/ime/input/a;->a:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/ime/input/a;->a:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_0
    return-void
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/ime/input/a;->a:Landroid/inputmethodservice/InputMethodService;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/ime/input/a;->a:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/ime/input/a;->a:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->switchInputMethod(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

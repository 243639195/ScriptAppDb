.class public final Lcom/cyjh/mobileanjian/ipc/uip/d;
.super Landroid/widget/EditText;
.source "NullMenuEditText.java"


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/d;->setLongClickable(Z)V

    .line 19
    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/d;->setTextIsSelectable(Z)V

    .line 20
    new-instance p1, Lcom/cyjh/mobileanjian/ipc/uip/d$1;

    invoke-direct {p1, p0}, Lcom/cyjh/mobileanjian/ipc/uip/d$1;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/d;)V

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/d;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method


# virtual methods
.method public final onTextContextMenuItem(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.class final Lcom/cyjh/mobileanjian/ipc/uip/c$1;
.super Ljava/lang/Object;
.source "HSettingLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mobileanjian/ipc/uip/c;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mobileanjian/ipc/uip/c;


# direct methods
.method constructor <init>(Lcom/cyjh/mobileanjian/ipc/uip/c;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/c$1;->a:Lcom/cyjh/mobileanjian/ipc/uip/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->requestFocusFromTouch()Z

    const/4 p1, 0x0

    return p1
.end method

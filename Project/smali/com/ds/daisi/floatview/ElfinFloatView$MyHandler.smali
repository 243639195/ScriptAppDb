.class Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;
.super Landroid/os/Handler;
.source "ElfinFloatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/floatview/ElfinFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ds/daisi/floatview/ElfinFloatView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/ds/daisi/floatview/ElfinFloatView;)V
    .locals 1

    .line 169
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 170
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;->weakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/floatview/ElfinFloatView;Lcom/ds/daisi/floatview/ElfinFloatView$1;)V
    .locals 0

    .line 166
    invoke-direct {p0, p1}, Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;-><init>(Lcom/ds/daisi/floatview/ElfinFloatView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 175
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 176
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ds/daisi/floatview/ElfinFloatView;

    .line 177
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 182
    :pswitch_0
    invoke-static {v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$200(Lcom/ds/daisi/floatview/ElfinFloatView;)V

    goto :goto_0

    .line 179
    :pswitch_1
    invoke-static {v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$100(Lcom/ds/daisi/floatview/ElfinFloatView;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$MyHandler;
.super Landroid/os/Handler;
.source "RegisterCodeActivationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;)V
    .locals 1

    .line 415
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 416
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$MyHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$1;)V
    .locals 0

    .line 412
    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$MyHandler;-><init>(Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 421
    iget-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$MyHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;

    if-nez v0, :cond_0

    return-void

    .line 425
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x111

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 427
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 428
    invoke-static {v0, p1}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->access$500(Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;I)V

    :goto_0
    return-void
.end method

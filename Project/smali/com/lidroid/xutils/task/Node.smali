.class Lcom/lidroid/xutils/task/Node;
.super Ljava/lang/Object;
.source "PriorityObjectBlockingQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field next:Lcom/lidroid/xutils/task/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/task/Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field private value:Lcom/lidroid/xutils/task/PriorityObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/task/PriorityObject<",
            "*>;"
        }
    .end annotation
.end field

.field private valueAsT:Z


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 609
    iput-boolean v0, p0, Lcom/lidroid/xutils/task/Node;->valueAsT:Z

    .line 614
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/task/Node;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getPriority()Lcom/lidroid/xutils/task/Priority;
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/lidroid/xutils/task/Node;->value:Lcom/lidroid/xutils/task/PriorityObject;

    iget-object v0, v0, Lcom/lidroid/xutils/task/PriorityObject;->priority:Lcom/lidroid/xutils/task/Priority;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 623
    iget-object v0, p0, Lcom/lidroid/xutils/task/Node;->value:Lcom/lidroid/xutils/task/PriorityObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 625
    :cond_0
    iget-boolean v0, p0, Lcom/lidroid/xutils/task/Node;->valueAsT:Z

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/lidroid/xutils/task/Node;->value:Lcom/lidroid/xutils/task/PriorityObject;

    return-object v0

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/lidroid/xutils/task/Node;->value:Lcom/lidroid/xutils/task/PriorityObject;

    iget-object v0, v0, Lcom/lidroid/xutils/task/PriorityObject;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 634
    iput-object p1, p0, Lcom/lidroid/xutils/task/Node;->value:Lcom/lidroid/xutils/task/PriorityObject;

    return-void

    .line 635
    :cond_0
    instance-of v0, p1, Lcom/lidroid/xutils/task/PriorityObject;

    if-eqz v0, :cond_1

    .line 636
    check-cast p1, Lcom/lidroid/xutils/task/PriorityObject;

    iput-object p1, p0, Lcom/lidroid/xutils/task/Node;->value:Lcom/lidroid/xutils/task/PriorityObject;

    const/4 p1, 0x1

    .line 637
    iput-boolean p1, p0, Lcom/lidroid/xutils/task/Node;->valueAsT:Z

    return-void

    .line 639
    :cond_1
    new-instance v0, Lcom/lidroid/xutils/task/PriorityObject;

    sget-object v1, Lcom/lidroid/xutils/task/Priority;->DEFAULT:Lcom/lidroid/xutils/task/Priority;

    invoke-direct {v0, v1, p1}, Lcom/lidroid/xutils/task/PriorityObject;-><init>(Lcom/lidroid/xutils/task/Priority;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lidroid/xutils/task/Node;->value:Lcom/lidroid/xutils/task/PriorityObject;

    return-void
.end method

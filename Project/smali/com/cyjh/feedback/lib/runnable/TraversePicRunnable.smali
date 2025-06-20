.class public Lcom/cyjh/feedback/lib/runnable/TraversePicRunnable;
.super Ljava/lang/Object;
.source "TraversePicRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mAddList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/cyjh/feedback/lib/runnable/TraversePicRunnable;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/cyjh/feedback/lib/runnable/TraversePicRunnable;->mHandler:Landroid/os/Handler;

    .line 30
    iput-object p3, p0, Lcom/cyjh/feedback/lib/runnable/TraversePicRunnable;->mAddList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 35
    new-instance v0, Lcom/cyjh/feedback/lib/entities/PicDataBean;

    invoke-direct {v0}, Lcom/cyjh/feedback/lib/entities/PicDataBean;-><init>()V

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    iget-object v2, p0, Lcom/cyjh/feedback/lib/runnable/TraversePicRunnable;->mAddList:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cyjh/feedback/lib/runnable/TraversePicRunnable;->mAddList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/cyjh/feedback/lib/runnable/TraversePicRunnable;->mAddList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 40
    iget-object v5, p0, Lcom/cyjh/feedback/lib/runnable/TraversePicRunnable;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/cyjh/feedback/lib/utils/ImageReaderLoacl;->img2Base64(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 41
    new-instance v5, Lcom/cyjh/feedback/lib/entities/PicPathBean;

    invoke-direct {v5}, Lcom/cyjh/feedback/lib/entities/PicPathBean;-><init>()V

    .line 42
    invoke-virtual {v5, v4}, Lcom/cyjh/feedback/lib/entities/PicPathBean;->setImage(Ljava/lang/String;)V

    .line 43
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    :cond_0
    new-instance v2, Lcom/cyjh/feedback/lib/entities/PicPathBean;

    invoke-direct {v2}, Lcom/cyjh/feedback/lib/entities/PicPathBean;-><init>()V

    .line 47
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cyjh/feedback/lib/entities/PicPathBean;->setImage(Ljava/lang/String;)V

    .line 48
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_1
    invoke-virtual {v0, v1}, Lcom/cyjh/feedback/lib/entities/PicDataBean;->setRdata(Ljava/util/List;)V

    .line 51
    iget-object v1, p0, Lcom/cyjh/feedback/lib/runnable/TraversePicRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 52
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 53
    iput v3, v1, Landroid/os/Message;->what:I

    .line 54
    iget-object v0, p0, Lcom/cyjh/feedback/lib/runnable/TraversePicRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

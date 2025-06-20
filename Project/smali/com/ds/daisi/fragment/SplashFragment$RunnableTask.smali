.class Lcom/ds/daisi/fragment/SplashFragment$RunnableTask;
.super Ljava/lang/Object;
.source "SplashFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/fragment/SplashFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunnableTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/fragment/SplashFragment;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/fragment/SplashFragment;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment$RunnableTask;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/fragment/SplashFragment;Lcom/ds/daisi/fragment/SplashFragment$1;)V
    .locals 0

    .line 445
    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/SplashFragment$RunnableTask;-><init>(Lcom/ds/daisi/fragment/SplashFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 453
    iget-object v0, p0, Lcom/ds/daisi/fragment/SplashFragment$RunnableTask;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-static {v0}, Lcom/ds/daisi/fragment/SplashFragment;->access$908(Lcom/ds/daisi/fragment/SplashFragment;)I

    const/4 v0, 0x0

    .line 454
    :goto_0
    iget-object v1, p0, Lcom/ds/daisi/fragment/SplashFragment$RunnableTask;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-static {v1}, Lcom/ds/daisi/fragment/SplashFragment;->access$1000(Lcom/ds/daisi/fragment/SplashFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 455
    iget-object v1, p0, Lcom/ds/daisi/fragment/SplashFragment$RunnableTask;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-static {v1}, Lcom/ds/daisi/fragment/SplashFragment;->access$900(Lcom/ds/daisi/fragment/SplashFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/ds/daisi/fragment/SplashFragment$RunnableTask;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-static {v2}, Lcom/ds/daisi/fragment/SplashFragment;->access$1000(Lcom/ds/daisi/fragment/SplashFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/ds/daisi/fragment/SplashFragment$RunnableTask;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-static {v1}, Lcom/ds/daisi/fragment/SplashFragment;->access$1000(Lcom/ds/daisi/fragment/SplashFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ds/daisi/fragment/SplashFragment$RunnableTask;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-static {v2}, Lcom/ds/daisi/fragment/SplashFragment;->access$1100(Lcom/ds/daisi/fragment/SplashFragment;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 458
    :cond_0
    iget-object v1, p0, Lcom/ds/daisi/fragment/SplashFragment$RunnableTask;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-static {v1}, Lcom/ds/daisi/fragment/SplashFragment;->access$1000(Lcom/ds/daisi/fragment/SplashFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ds/daisi/fragment/SplashFragment$RunnableTask;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-static {v2}, Lcom/ds/daisi/fragment/SplashFragment;->access$1200(Lcom/ds/daisi/fragment/SplashFragment;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/ds/daisi/fragment/SplashFragment$RunnableTask;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-static {v0}, Lcom/ds/daisi/fragment/SplashFragment;->access$400(Lcom/ds/daisi/fragment/SplashFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 462
    iget-object v0, p0, Lcom/ds/daisi/fragment/SplashFragment$RunnableTask;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-static {v0}, Lcom/ds/daisi/fragment/SplashFragment;->access$400(Lcom/ds/daisi/fragment/SplashFragment;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public start()V
    .locals 3

    .line 448
    iget-object v0, p0, Lcom/ds/daisi/fragment/SplashFragment$RunnableTask;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-static {v0}, Lcom/ds/daisi/fragment/SplashFragment;->access$400(Lcom/ds/daisi/fragment/SplashFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 449
    iget-object v0, p0, Lcom/ds/daisi/fragment/SplashFragment$RunnableTask;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-static {v0}, Lcom/ds/daisi/fragment/SplashFragment;->access$400(Lcom/ds/daisi/fragment/SplashFragment;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

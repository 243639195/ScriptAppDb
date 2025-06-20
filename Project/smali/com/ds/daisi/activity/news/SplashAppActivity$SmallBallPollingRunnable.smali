.class Lcom/ds/daisi/activity/news/SplashAppActivity$SmallBallPollingRunnable;
.super Ljava/lang/Object;
.source "SplashAppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/news/SplashAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmallBallPollingRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/news/SplashAppActivity;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/activity/news/SplashAppActivity;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$SmallBallPollingRunnable;->this$0:Lcom/ds/daisi/activity/news/SplashAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/activity/news/SplashAppActivity;Lcom/ds/daisi/activity/news/SplashAppActivity$1;)V
    .locals 0

    .line 483
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/news/SplashAppActivity$SmallBallPollingRunnable;-><init>(Lcom/ds/daisi/activity/news/SplashAppActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 491
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$SmallBallPollingRunnable;->this$0:Lcom/ds/daisi/activity/news/SplashAppActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->access$508(Lcom/ds/daisi/activity/news/SplashAppActivity;)I

    const/4 v0, 0x0

    .line 492
    :goto_0
    iget-object v1, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$SmallBallPollingRunnable;->this$0:Lcom/ds/daisi/activity/news/SplashAppActivity;

    invoke-static {v1}, Lcom/ds/daisi/activity/news/SplashAppActivity;->access$600(Lcom/ds/daisi/activity/news/SplashAppActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 494
    iget-object v1, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$SmallBallPollingRunnable;->this$0:Lcom/ds/daisi/activity/news/SplashAppActivity;

    invoke-static {v1}, Lcom/ds/daisi/activity/news/SplashAppActivity;->access$500(Lcom/ds/daisi/activity/news/SplashAppActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$SmallBallPollingRunnable;->this$0:Lcom/ds/daisi/activity/news/SplashAppActivity;

    invoke-static {v2}, Lcom/ds/daisi/activity/news/SplashAppActivity;->access$600(Lcom/ds/daisi/activity/news/SplashAppActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 495
    iget-object v1, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$SmallBallPollingRunnable;->this$0:Lcom/ds/daisi/activity/news/SplashAppActivity;

    invoke-static {v1}, Lcom/ds/daisi/activity/news/SplashAppActivity;->access$600(Lcom/ds/daisi/activity/news/SplashAppActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$SmallBallPollingRunnable;->this$0:Lcom/ds/daisi/activity/news/SplashAppActivity;

    invoke-static {v2}, Lcom/ds/daisi/activity/news/SplashAppActivity;->access$700(Lcom/ds/daisi/activity/news/SplashAppActivity;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 497
    :cond_0
    iget-object v1, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$SmallBallPollingRunnable;->this$0:Lcom/ds/daisi/activity/news/SplashAppActivity;

    invoke-static {v1}, Lcom/ds/daisi/activity/news/SplashAppActivity;->access$600(Lcom/ds/daisi/activity/news/SplashAppActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$SmallBallPollingRunnable;->this$0:Lcom/ds/daisi/activity/news/SplashAppActivity;

    invoke-static {v2}, Lcom/ds/daisi/activity/news/SplashAppActivity;->access$800(Lcom/ds/daisi/activity/news/SplashAppActivity;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$SmallBallPollingRunnable;->this$0:Lcom/ds/daisi/activity/news/SplashAppActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->access$400(Lcom/ds/daisi/activity/news/SplashAppActivity;)Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 501
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$SmallBallPollingRunnable;->this$0:Lcom/ds/daisi/activity/news/SplashAppActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->access$400(Lcom/ds/daisi/activity/news/SplashAppActivity;)Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public start()V
    .locals 3

    .line 485
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$SmallBallPollingRunnable;->this$0:Lcom/ds/daisi/activity/news/SplashAppActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->access$400(Lcom/ds/daisi/activity/news/SplashAppActivity;)Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 486
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$SmallBallPollingRunnable;->this$0:Lcom/ds/daisi/activity/news/SplashAppActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->access$400(Lcom/ds/daisi/activity/news/SplashAppActivity;)Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

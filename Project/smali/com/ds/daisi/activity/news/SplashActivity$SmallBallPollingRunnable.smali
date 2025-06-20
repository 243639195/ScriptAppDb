.class Lcom/ds/daisi/activity/news/SplashActivity$SmallBallPollingRunnable;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/news/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmallBallPollingRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/news/SplashActivity;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/activity/news/SplashActivity;)V
    .locals 0

    .line 940
    iput-object p1, p0, Lcom/ds/daisi/activity/news/SplashActivity$SmallBallPollingRunnable;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/activity/news/SplashActivity;Lcom/ds/daisi/activity/news/SplashActivity$1;)V
    .locals 0

    .line 940
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/news/SplashActivity$SmallBallPollingRunnable;-><init>(Lcom/ds/daisi/activity/news/SplashActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 948
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity$SmallBallPollingRunnable;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/news/SplashActivity;->access$1308(Lcom/ds/daisi/activity/news/SplashActivity;)I

    const/4 v0, 0x0

    .line 949
    :goto_0
    iget-object v1, p0, Lcom/ds/daisi/activity/news/SplashActivity$SmallBallPollingRunnable;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-static {v1}, Lcom/ds/daisi/activity/news/SplashActivity;->access$1400(Lcom/ds/daisi/activity/news/SplashActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 951
    iget-object v1, p0, Lcom/ds/daisi/activity/news/SplashActivity$SmallBallPollingRunnable;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-static {v1}, Lcom/ds/daisi/activity/news/SplashActivity;->access$1300(Lcom/ds/daisi/activity/news/SplashActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/ds/daisi/activity/news/SplashActivity$SmallBallPollingRunnable;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-static {v2}, Lcom/ds/daisi/activity/news/SplashActivity;->access$1400(Lcom/ds/daisi/activity/news/SplashActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 952
    iget-object v1, p0, Lcom/ds/daisi/activity/news/SplashActivity$SmallBallPollingRunnable;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-static {v1}, Lcom/ds/daisi/activity/news/SplashActivity;->access$1400(Lcom/ds/daisi/activity/news/SplashActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ds/daisi/activity/news/SplashActivity$SmallBallPollingRunnable;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-static {v2}, Lcom/ds/daisi/activity/news/SplashActivity;->access$1500(Lcom/ds/daisi/activity/news/SplashActivity;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 954
    :cond_0
    iget-object v1, p0, Lcom/ds/daisi/activity/news/SplashActivity$SmallBallPollingRunnable;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-static {v1}, Lcom/ds/daisi/activity/news/SplashActivity;->access$1400(Lcom/ds/daisi/activity/news/SplashActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ds/daisi/activity/news/SplashActivity$SmallBallPollingRunnable;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-static {v2}, Lcom/ds/daisi/activity/news/SplashActivity;->access$1600(Lcom/ds/daisi/activity/news/SplashActivity;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 957
    :cond_1
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity$SmallBallPollingRunnable;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/news/SplashActivity;->access$400(Lcom/ds/daisi/activity/news/SplashActivity;)Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 958
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity$SmallBallPollingRunnable;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/news/SplashActivity;->access$400(Lcom/ds/daisi/activity/news/SplashActivity;)Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public start()V
    .locals 3

    .line 942
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity$SmallBallPollingRunnable;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/news/SplashActivity;->access$400(Lcom/ds/daisi/activity/news/SplashActivity;)Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 943
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity$SmallBallPollingRunnable;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/news/SplashActivity;->access$400(Lcom/ds/daisi/activity/news/SplashActivity;)Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

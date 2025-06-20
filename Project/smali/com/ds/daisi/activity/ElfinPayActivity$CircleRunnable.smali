.class Lcom/ds/daisi/activity/ElfinPayActivity$CircleRunnable;
.super Ljava/lang/Object;
.source "ElfinPayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/ElfinPayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CircleRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/ElfinPayActivity;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/activity/ElfinPayActivity;)V
    .locals 0

    .line 1136
    iput-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity$CircleRunnable;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/activity/ElfinPayActivity;Lcom/ds/daisi/activity/ElfinPayActivity$1;)V
    .locals 0

    .line 1136
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/ElfinPayActivity$CircleRunnable;-><init>(Lcom/ds/daisi/activity/ElfinPayActivity;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/ds/daisi/activity/ElfinPayActivity$CircleRunnable;)V
    .locals 0

    .line 1136
    invoke-direct {p0}, Lcom/ds/daisi/activity/ElfinPayActivity$CircleRunnable;->onStart()V

    return-void
.end method

.method private onStart()V
    .locals 3

    .line 1139
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity$CircleRunnable;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->access$100(Lcom/ds/daisi/activity/ElfinPayActivity;)Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1140
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity$CircleRunnable;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->access$100(Lcom/ds/daisi/activity/ElfinPayActivity;)Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1145
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity$CircleRunnable;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    iget-boolean v0, v0, Lcom/ds/daisi/activity/ElfinPayActivity;->isDisplayUI:Z

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity$CircleRunnable;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ds/daisi/activity/ElfinPayActivity;->isDisplayUI:Z

    .line 1147
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity$CircleRunnable;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->access$100(Lcom/ds/daisi/activity/ElfinPayActivity;)Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1148
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity$CircleRunnable;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->access$1500(Lcom/ds/daisi/activity/ElfinPayActivity;)V

    goto :goto_0

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity$CircleRunnable;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->access$100(Lcom/ds/daisi/activity/ElfinPayActivity;)Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1151
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity$CircleRunnable;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->access$100(Lcom/ds/daisi/activity/ElfinPayActivity;)Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

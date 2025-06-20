.class Lcom/ds/daisi/activity/ElfinPayActivity$SubmitTimeCount;
.super Landroid/os/CountDownTimer;
.source "ElfinPayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/ElfinPayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubmitTimeCount"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/ElfinPayActivity;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/activity/ElfinPayActivity;JJ)V
    .locals 0

    .line 856
    iput-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity$SubmitTimeCount;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    .line 857
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/activity/ElfinPayActivity;JJLcom/ds/daisi/activity/ElfinPayActivity$1;)V
    .locals 0

    .line 849
    invoke-direct/range {p0 .. p5}, Lcom/ds/daisi/activity/ElfinPayActivity$SubmitTimeCount;-><init>(Lcom/ds/daisi/activity/ElfinPayActivity;JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 862
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity$SubmitTimeCount;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->access$500(Lcom/ds/daisi/activity/ElfinPayActivity;)Lcom/cyjh/feedback/lib/dialog/FeedBackCommitDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/feedback/lib/dialog/FeedBackCommitDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity$SubmitTimeCount;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->access$500(Lcom/ds/daisi/activity/ElfinPayActivity;)Lcom/cyjh/feedback/lib/dialog/FeedBackCommitDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/feedback/lib/dialog/FeedBackCommitDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method

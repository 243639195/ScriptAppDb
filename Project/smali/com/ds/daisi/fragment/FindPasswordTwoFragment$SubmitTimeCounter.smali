.class Lcom/ds/daisi/fragment/FindPasswordTwoFragment$SubmitTimeCounter;
.super Lcom/ds/daisi/timer/CountTimer;
.source "FindPasswordTwoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/fragment/FindPasswordTwoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubmitTimeCounter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/fragment/FindPasswordTwoFragment;


# direct methods
.method public constructor <init>(Lcom/ds/daisi/fragment/FindPasswordTwoFragment;JJ)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment$SubmitTimeCounter;->this$0:Lcom/ds/daisi/fragment/FindPasswordTwoFragment;

    .line 220
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/ds/daisi/timer/CountTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment$SubmitTimeCounter;->this$0:Lcom/ds/daisi/fragment/FindPasswordTwoFragment;

    invoke-static {v0}, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->access$000(Lcom/ds/daisi/fragment/FindPasswordTwoFragment;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020057

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 234
    iget-object v0, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment$SubmitTimeCounter;->this$0:Lcom/ds/daisi/fragment/FindPasswordTwoFragment;

    invoke-virtual {v0}, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment$SubmitTimeCounter;->this$0:Lcom/ds/daisi/fragment/FindPasswordTwoFragment;

    invoke-static {v0}, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->access$000(Lcom/ds/daisi/fragment/FindPasswordTwoFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment$SubmitTimeCounter;->this$0:Lcom/ds/daisi/fragment/FindPasswordTwoFragment;

    const v2, 0x7f090162

    invoke-virtual {v1, v2}, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment$SubmitTimeCounter;->this$0:Lcom/ds/daisi/fragment/FindPasswordTwoFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->access$102(Lcom/ds/daisi/fragment/FindPasswordTwoFragment;Z)Z

    return-void
.end method

.method public onTick(J)V
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment$SubmitTimeCounter;->this$0:Lcom/ds/daisi/fragment/FindPasswordTwoFragment;

    invoke-virtual {v0}, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment$SubmitTimeCounter;->this$0:Lcom/ds/daisi/fragment/FindPasswordTwoFragment;

    invoke-static {v0}, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->access$000(Lcom/ds/daisi/fragment/FindPasswordTwoFragment;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f02006b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 227
    iget-object v0, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment$SubmitTimeCounter;->this$0:Lcom/ds/daisi/fragment/FindPasswordTwoFragment;

    invoke-static {v0}, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->access$000(Lcom/ds/daisi/fragment/FindPasswordTwoFragment;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\u79d2\u91cd\u65b0\u83b7\u53d6"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

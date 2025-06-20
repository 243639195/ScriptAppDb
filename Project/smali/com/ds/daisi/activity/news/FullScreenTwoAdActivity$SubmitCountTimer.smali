.class Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$SubmitCountTimer;
.super Lcom/cyjh/share/counttimer/SecondTimer;
.source "FullScreenTwoAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubmitCountTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;I)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$SubmitCountTimer;->this$0:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;

    .line 296
    invoke-direct {p0, p2}, Lcom/cyjh/share/counttimer/SecondTimer;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;ILcom/ds/daisi/activity/news/FullScreenTwoAdActivity$1;)V
    .locals 0

    .line 294
    invoke-direct {p0, p1, p2}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$SubmitCountTimer;-><init>(Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;I)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$SubmitCountTimer;->this$0:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->access$100(Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;)V

    return-void
.end method

.method protected onTick(I)V
    .locals 5

    .line 301
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$SubmitCountTimer;->this$0:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->access$408(Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;)I

    .line 302
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$SubmitCountTimer;->this$0:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->access$500(Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$SubmitCountTimer;->this$0:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->access$600(Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$SubmitCountTimer;->this$0:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;

    const v2, 0x7f090083

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object p1, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$SubmitCountTimer;->this$0:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;

    invoke-static {p1}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->access$600(Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

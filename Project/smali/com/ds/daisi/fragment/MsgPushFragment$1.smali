.class Lcom/ds/daisi/fragment/MsgPushFragment$1;
.super Ljava/lang/Object;
.source "MsgPushFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/fragment/MsgPushFragment;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/fragment/MsgPushFragment;


# direct methods
.method constructor <init>(Lcom/ds/daisi/fragment/MsgPushFragment;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/ds/daisi/fragment/MsgPushFragment$1;->this$0:Lcom/ds/daisi/fragment/MsgPushFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 65
    iget-object p1, p0, Lcom/ds/daisi/fragment/MsgPushFragment$1;->this$0:Lcom/ds/daisi/fragment/MsgPushFragment;

    invoke-static {p1}, Lcom/ds/daisi/fragment/MsgPushFragment;->access$000(Lcom/ds/daisi/fragment/MsgPushFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/share/bean/NotifyMsgBean;

    .line 66
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/ds/daisi/fragment/MsgPushFragment$1;->this$0:Lcom/ds/daisi/fragment/MsgPushFragment;

    invoke-virtual {p3}, Lcom/ds/daisi/fragment/MsgPushFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    const-class p4, Lcom/ds/daisi/activity/MessageDetailActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    const-class p3, Lcom/ds/daisi/activity/MessageDetailActivity;

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    iget-object p1, p1, Lcom/cyjh/share/bean/NotifyMsgBean;->ID:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p4

    invoke-virtual {p2, p3, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 68
    iget-object p1, p0, Lcom/ds/daisi/fragment/MsgPushFragment$1;->this$0:Lcom/ds/daisi/fragment/MsgPushFragment;

    invoke-virtual {p1, p2}, Lcom/ds/daisi/fragment/MsgPushFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

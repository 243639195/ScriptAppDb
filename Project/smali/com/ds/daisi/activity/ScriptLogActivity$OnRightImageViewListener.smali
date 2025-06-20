.class Lcom/ds/daisi/activity/ScriptLogActivity$OnRightImageViewListener;
.super Ljava/lang/Object;
.source "ScriptLogActivity.java"

# interfaces
.implements Lcom/ds/daisi/customview/TitleView$OnRightImageViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/ScriptLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnRightImageViewListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/ScriptLogActivity;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/activity/ScriptLogActivity;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/ds/daisi/activity/ScriptLogActivity$OnRightImageViewListener;->this$0:Lcom/ds/daisi/activity/ScriptLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/activity/ScriptLogActivity;Lcom/ds/daisi/activity/ScriptLogActivity$1;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/ScriptLogActivity$OnRightImageViewListener;-><init>(Lcom/ds/daisi/activity/ScriptLogActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 119
    iget-object p1, p0, Lcom/ds/daisi/activity/ScriptLogActivity$OnRightImageViewListener;->this$0:Lcom/ds/daisi/activity/ScriptLogActivity;

    iget-object v0, p0, Lcom/ds/daisi/activity/ScriptLogActivity$OnRightImageViewListener;->this$0:Lcom/ds/daisi/activity/ScriptLogActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/ScriptLogActivity;->access$200(Lcom/ds/daisi/activity/ScriptLogActivity;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/ds/daisi/activity/ScriptLogActivity;->access$202(Lcom/ds/daisi/activity/ScriptLogActivity;Z)Z

    .line 120
    iget-object p1, p0, Lcom/ds/daisi/activity/ScriptLogActivity$OnRightImageViewListener;->this$0:Lcom/ds/daisi/activity/ScriptLogActivity;

    invoke-static {p1}, Lcom/ds/daisi/activity/ScriptLogActivity;->access$200(Lcom/ds/daisi/activity/ScriptLogActivity;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 121
    iget-object p1, p0, Lcom/ds/daisi/activity/ScriptLogActivity$OnRightImageViewListener;->this$0:Lcom/ds/daisi/activity/ScriptLogActivity;

    invoke-static {p1}, Lcom/ds/daisi/activity/ScriptLogActivity;->access$300(Lcom/ds/daisi/activity/ScriptLogActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 122
    iget-object p1, p0, Lcom/ds/daisi/activity/ScriptLogActivity$OnRightImageViewListener;->this$0:Lcom/ds/daisi/activity/ScriptLogActivity;

    invoke-static {p1}, Lcom/ds/daisi/activity/ScriptLogActivity;->access$400(Lcom/ds/daisi/activity/ScriptLogActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 123
    iget-object p1, p0, Lcom/ds/daisi/activity/ScriptLogActivity$OnRightImageViewListener;->this$0:Lcom/ds/daisi/activity/ScriptLogActivity;

    invoke-static {p1}, Lcom/ds/daisi/activity/ScriptLogActivity;->access$500(Lcom/ds/daisi/activity/ScriptLogActivity;)Lcom/ds/daisi/customview/TitleView;

    move-result-object p1

    const v1, 0x7f0200c5

    invoke-virtual {p1, v1}, Lcom/ds/daisi/customview/TitleView;->setRightImage(I)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/activity/ScriptLogActivity$OnRightImageViewListener;->this$0:Lcom/ds/daisi/activity/ScriptLogActivity;

    invoke-static {p1}, Lcom/ds/daisi/activity/ScriptLogActivity;->access$300(Lcom/ds/daisi/activity/ScriptLogActivity;)Landroid/widget/Button;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 126
    iget-object p1, p0, Lcom/ds/daisi/activity/ScriptLogActivity$OnRightImageViewListener;->this$0:Lcom/ds/daisi/activity/ScriptLogActivity;

    invoke-static {p1}, Lcom/ds/daisi/activity/ScriptLogActivity;->access$400(Lcom/ds/daisi/activity/ScriptLogActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 127
    iget-object p1, p0, Lcom/ds/daisi/activity/ScriptLogActivity$OnRightImageViewListener;->this$0:Lcom/ds/daisi/activity/ScriptLogActivity;

    invoke-static {p1}, Lcom/ds/daisi/activity/ScriptLogActivity;->access$500(Lcom/ds/daisi/activity/ScriptLogActivity;)Lcom/ds/daisi/customview/TitleView;

    move-result-object p1

    const v1, 0x7f0200cc

    invoke-virtual {p1, v1}, Lcom/ds/daisi/customview/TitleView;->setRightImage(I)V

    .line 129
    :goto_0
    iget-object p1, p0, Lcom/ds/daisi/activity/ScriptLogActivity$OnRightImageViewListener;->this$0:Lcom/ds/daisi/activity/ScriptLogActivity;

    invoke-static {p1}, Lcom/ds/daisi/activity/ScriptLogActivity;->access$600(Lcom/ds/daisi/activity/ScriptLogActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ds/daisi/entity/ScriptLog;

    .line 130
    invoke-virtual {v1, v0}, Lcom/ds/daisi/entity/ScriptLog;->setSelect(Z)V

    goto :goto_1

    .line 132
    :cond_1
    iget-object p1, p0, Lcom/ds/daisi/activity/ScriptLogActivity$OnRightImageViewListener;->this$0:Lcom/ds/daisi/activity/ScriptLogActivity;

    invoke-static {p1}, Lcom/ds/daisi/activity/ScriptLogActivity;->access$700(Lcom/ds/daisi/activity/ScriptLogActivity;)Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/ds/daisi/activity/ScriptLogActivity$OnRightImageViewListener;->this$0:Lcom/ds/daisi/activity/ScriptLogActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/ScriptLogActivity;->access$200(Lcom/ds/daisi/activity/ScriptLogActivity;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;->setManage(Z)V

    .line 133
    iget-object p1, p0, Lcom/ds/daisi/activity/ScriptLogActivity$OnRightImageViewListener;->this$0:Lcom/ds/daisi/activity/ScriptLogActivity;

    invoke-static {p1}, Lcom/ds/daisi/activity/ScriptLogActivity;->access$700(Lcom/ds/daisi/activity/ScriptLogActivity;)Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

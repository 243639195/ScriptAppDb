.class Lcom/ds/daisi/activity/MessagePushActivity$OnRightTextViewOnClicker;
.super Ljava/lang/Object;
.source "MessagePushActivity.java"

# interfaces
.implements Lcom/ds/daisi/customview/TitleView$OnRightTextViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/MessagePushActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnRightTextViewOnClicker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/MessagePushActivity;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/activity/MessagePushActivity;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/ds/daisi/activity/MessagePushActivity$OnRightTextViewOnClicker;->this$0:Lcom/ds/daisi/activity/MessagePushActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/activity/MessagePushActivity;Lcom/ds/daisi/activity/MessagePushActivity$1;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/MessagePushActivity$OnRightTextViewOnClicker;-><init>(Lcom/ds/daisi/activity/MessagePushActivity;)V

    return-void
.end method


# virtual methods
.method public onClicker(Landroid/view/View;)V
    .locals 2

    .line 78
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/ds/daisi/entity/MsgItem;

    const/16 v1, 0x3ea

    invoke-direct {v0, v1}, Lcom/ds/daisi/entity/MsgItem;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
